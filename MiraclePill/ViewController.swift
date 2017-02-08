//
//  ViewController.swift
//  MiraclePill
//
//  Created by Zac on 2/7/17.
//  Copyright © 2017 Zac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{

    @IBOutlet private weak var statePicker: UIPickerView!
    
    @IBOutlet private weak var statePickerButton: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York", "Washington"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        statePicker.dataSource = self
        
        statePicker.delegate = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
//        statePickerButton.setTitle(states[row], for: UIControlState()) // workaround
        
        statePicker.isHidden = true
    }
    
    @IBAction private func stateButtonPress(_ sender: UIButton)
    {
        statePicker.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

