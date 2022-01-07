
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int bus; } ;
struct TYPE_2__ {int (* reset_secondary_bus ) (struct pci_dev*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;


 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_reset_secondary_bus (struct pci_dev*) ;
 int stub1 (struct pci_dev*) ;

void pcibios_reset_secondary_bus(struct pci_dev *dev)
{
 struct pci_controller *phb = pci_bus_to_host(dev->bus);

 if (phb->controller_ops.reset_secondary_bus) {
  phb->controller_ops.reset_secondary_bus(dev);
  return;
 }

 pci_reset_secondary_bus(dev);
}
