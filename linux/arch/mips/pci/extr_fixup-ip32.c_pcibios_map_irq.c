
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int dummy; } ;


 int** irq_tab_mace ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 return irq_tab_mace[slot][pin];
}
