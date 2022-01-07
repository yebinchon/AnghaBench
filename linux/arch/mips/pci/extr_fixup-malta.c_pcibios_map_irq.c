
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int dummy; } ;


 int** irq_tab ;
 int* pci_irq ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int virq;
 virq = irq_tab[slot][pin];
 return pci_irq[virq];
}
