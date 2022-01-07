
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int bus; } ;
struct ar2315_pci_ctrl {int irq_ext; } ;


 struct ar2315_pci_ctrl* ar2315_pci_bus_to_apc (int ) ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 struct ar2315_pci_ctrl *apc = ar2315_pci_bus_to_apc(dev->bus);

 return slot ? 0 : apc->irq_ext;
}
