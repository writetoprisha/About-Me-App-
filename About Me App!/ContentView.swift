//
//  ContentView.swift
//  About Me App!
//
//  Created by Prisha Gupta on 8/9/23.
//

import SwiftUI

struct ContentView: View {
   @State private var showDetails = false
    @State private var showMoreDetails = false
    
    var body: some View {
        
        ZStack{
            Color(.systemGray4)
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                
                Text("About Me: Prisha Gupta")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.532, saturation: 0.907, brightness: 0.544))
                    .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(5.0)
                        .shadow(radius: 15)
                
                HStack(alignment: .center, spacing: 15) {
                    
                    Image("Prisha")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10.0)
                    
                    Image("Prisha 2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10.0)
                }
                
               
                Button("Click Here to Learn More About Me!") {
                    
                    showDetails.toggle()
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.753, saturation: 1.0, brightness: 1.0))
                
                if showDetails
                {
                    
                    Text("My name is Prisha Gupta and I am a sophomore at the Bergen County Academies. I have an adorable dog named Cooper! My hobbies include reading, tap dancing, going on vacation, and coding!")
                        .fontWeight(.medium)
                        .foregroundColor(Color(hue: 0.749, saturation: 0.965, brightness: 0.662))
                        .multilineTextAlignment(.center)
                        .padding(2.0)
                    
                }
        
                
                HStack(alignment: .center, spacing: 16) {
                    
                    Image("Cooper")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10.0)
                       
                    
                    Image("Cooper 2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10.0)
                    
                }
               
                Button("Click Here to Learn More About Cooper!") {
                    
                    showMoreDetails.toggle()
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.pink)
                
                if showMoreDetails
                {
                    
                    Text("This is Cooper! Cooper will turn 2 years old this Friday, August 11th! I love to spend time with him, go to the beach with him, and take road trips together! :)")
                        .fontWeight(.medium)
                        .foregroundColor(Color.pink)
                        .multilineTextAlignment(.center)
                        .padding(3.0)
                }
                
                
            }
            
        }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
