//
//  ContentView.swift
//  chapter31
//
//  Created by HEE TAE YANG on 2020/06/08.
//  Copyright © 2020 yht. All rights reserved.
//
// 제스처 라는 용어는 터치 스크린과 사용자 간의 인터랙션을 설명하는 데 사용되며, 앱내에서 이를 감지하여 이벤트를 실행하게 하는 데 사용될 수 있다. 드래그, 탭, 더블 탭, 핀칭, 로테이션, 롱 프레스 등은 모두 스위프트유아이에서 제스처로 간주된다. 이번장의 목적은 스위프트유아이 기반의 앱에서 제스처 인식을 어떻게 사용하는지 살펴보는것이다.
// 제스처 작업을 할 때는 일반적으로 제스처 인식기(gesture recognizer)를 변수에 할당하고 수정자에서 그 변수를 참조하는 것이 좋다. 이것은 뷰의 body 선언부를 더 깔끔하게 만들며 재사용셩을 높인다.

import SwiftUI

struct ContentView: View {
    
    @State private var magnification: CGFloat = 1.0
    
    var body: some View {
        
        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
            .onChanged({ value in
                self.magnification = value
            })
            .onEnded({_ in
                print("Gesture Ended")
            })
        
        return Image(systemName: "hand.point.right.fill")
            .resizable()
            .font(.largeTitle)
            .scaleEffect(magnification)
            .gesture(magnificationGesture)
            .frame(width: 100, height: 90)
    }
}
//        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
//            .onChanged({ _ in
//                print("Magnifying")
//        })
//            .onEnded{ _ in
//                print("Gesture Ended")
//        }
//
//        return Image(systemName: "hand.point.right.fill")
//            .resizable()
//            .font(.largeTitle)
//            .gesture(magnificationGesture)
//            .frame(width: 100, height: 90)
        
//        let tap = TapGesture()
//
//            .onEnded { _ in
//                print("Tapped")
//        }
        
//        let tap = TapGesture(count: 2) // 변수에 할당하여 재사용을 가능하고, 탭 제스처 인식기를 사용하게 되면 제스처로 인식할 탭 횟수를 지정할수도있다. 예를 들어, 다음은 더블 탭만 인식하는 예제다.
//            .onEnded { _ in
//                print("Tapped")
//        }
        
//        let longPress = LongPressGesture() // 변수에 할당하여 재사용을 가능하고, 탭 제스처 인식기를 사용하게 되면 제스처로 인식할 탭 횟수를 지정할수도있다. 예를 들어, 다음은 더블 탭만 인식하는 예제다.
//            .onEnded { _ in
//                print("Tapped")
//        }
        
//        let tap = LongPressGesture(minimumDuration: 10, maximumDistance: 25)
//            .onEnded { _ in
//                print("Long Press")
//        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
