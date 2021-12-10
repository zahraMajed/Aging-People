//
//  ViewController.swift
//  Aging People
//
//  Created by admin on 10/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    var peopleArray : [String] = ["Ahmad", "Hussam","Ameer", "Salem", "Noor", "Dema", "Lina", "Dana", "Hoor", "Yazan", "Murad", "Adam"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = peopleArray[indexPath.row]
        cell.detailTextLabel?.text = " \(Int.random(in: 1...90)) years old"
        return cell
    }
    
    
}


