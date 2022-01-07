
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int dn; } ;
struct pci_bus {struct pci_controller* sysdata; } ;
struct device_node {int dummy; } ;


 struct device_node* of_node_get (int ) ;

struct device_node *pcibios_get_phb_of_node(struct pci_bus *bus)
{
 struct pci_controller *hose = bus->sysdata;

 return of_node_get(hose->dn);
}
