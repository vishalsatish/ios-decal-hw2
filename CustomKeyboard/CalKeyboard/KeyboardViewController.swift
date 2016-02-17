//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button10: UIButton!
    @IBOutlet var button11: UIButton!
    @IBOutlet var button12: UIButton!
    @IBOutlet var button13: UIButton!
    @IBOutlet var button14: UIButton!
    @IBOutlet var button15: UIButton!
    @IBOutlet var button16: UIButton!
    @IBOutlet var button17: UIButton!
    @IBOutlet var button18: UIButton!
    @IBOutlet var button19: UIButton!
    @IBOutlet var button20: UIButton!
    @IBOutlet var button21: UIButton!
    @IBOutlet var button22: UIButton!
    @IBOutlet var button23: UIButton!
    @IBOutlet var button24: UIButton!
    @IBOutlet var button25: UIButton!
    @IBOutlet var button26: UIButton!
    @IBOutlet var button27: UIButton!
    @IBOutlet var button28: UIButton!
    @IBOutlet var button29: UIButton!
    @IBOutlet var button30: UIButton!
    @IBOutlet var button31: UIButton!
    @IBOutlet var button32: UIButton!
    @IBOutlet var button33: UIButton!
    @IBOutlet var button34: UIButton!
    @IBOutlet var button35: UIButton!
    @IBOutlet var button36: UIButton!
    @IBOutlet var button37: UIButton!
    @IBOutlet var button38: UIButton!
    @IBOutlet var button39: UIButton!
    var buttonArray: [UIButton] = [UIButton]()

    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func buttonPressed(sender: UIButton) {
        if (sender.tag == 1) {
            (textDocumentProxy as UIKeyInput).deleteBackward()
        } else if (sender.tag == 2) {
            (textDocumentProxy as UIKeyInput).insertText("\n")
        } else if (sender.tag == 3) {
            (textDocumentProxy as UIKeyInput).insertText(" ")
        } else {
            print(sender.titleLabel!.text!)
            (textDocumentProxy as UIKeyInput).insertText(sender.titleLabel!.text!)
        }
    }
    
    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        deleteButton.tag = 1
        returnButton.tag = 2
        spaceButton.tag = 3
        deleteButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        self.buttonArray = [self.button1, self.button2, self.button3, self.button4, self.button5, self.button6, self.button7, self.button8, self.button9, self.button10, self.button11, self.button12, self.button13, self.button14, self.button15, self.button16, self.button17, self.button18, self.button19, self.button20, self.button21, self.button22, self.button23, self.button24, self.button25, self.button26, self.button27, self.button28, self.button29, self.button30, self.button31, self.button32, self.button33, self.button34, self.button35, self.button36, self.button37, self.button38, self.button39]
        for (var i = 0; i < buttonArray.count; i++) {
            buttonArray[i].addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        }
    }


}
