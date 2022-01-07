
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int devfn; } ;


 size_t PCI_FUNC (int ) ;
 int* internal_func_irqs ;
 int* irq_tab_mpc30x ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 if (slot == 30)
  return internal_func_irqs[PCI_FUNC(dev->devfn)];

 return irq_tab_mpc30x[slot];
}
