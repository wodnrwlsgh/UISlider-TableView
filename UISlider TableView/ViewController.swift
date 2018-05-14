//
//  ViewController.swift
//  UISlider TableView
//
//  Created by D7703_04 on 2018. 5. 14..
//  Copyright © 2018년 D7703_04. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    
    @IBAction func sliderMoved(_ sender: Any) {
        myTableView.reloadData()
        myLabel.text = String(Int(mySlider.value))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 101
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        
        let tableValue = String(Int(mySlider.value) + indexPath.row)
        cell.textLabel?.text = String(Int(mySlider.value) + indexPath.row)
        return cell
    }
    
}

