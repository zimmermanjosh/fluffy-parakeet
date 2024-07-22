//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Joshua Zimmerman on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var selected = "Baseball"
    @State private var id = 1
    
    var body: some View {
        VStack{
            Text("Why not try ..")
                .font(.largeTitle.bold())
        }
        
        Spacer()
        
        VStack{
                Circle()
                .fill(colors.randomElement() ?? .blue )
                .padding()
                . overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size:144))
                        .foregroundColor(.white)
                )
                
            Text("\(selected)!")
                .font(.title)
        }
        .transition(.slide)
        .id(id)
        Spacer()
        Button("Try Again"){
            // changes some activity
            withAnimation(.easeInOut(duration: 1)){
                selected = activities.randomElement() ?? "Baseball"
                id += 1
                }
            }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
