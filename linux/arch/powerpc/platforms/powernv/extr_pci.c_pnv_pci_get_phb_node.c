
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct pci_controller {int dn; } ;
struct device_node {int dummy; } ;


 struct device_node* of_node_get (int ) ;
 struct pci_controller* pci_bus_to_host (int ) ;

struct device_node *pnv_pci_get_phb_node(struct pci_dev *dev)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);

 return of_node_get(hose->dn);
}
