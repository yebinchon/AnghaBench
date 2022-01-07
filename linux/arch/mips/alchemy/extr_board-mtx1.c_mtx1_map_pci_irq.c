
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int dummy; } ;


 int** mtx1_irqtab ;

__attribute__((used)) static int mtx1_map_pci_irq(const struct pci_dev *d, u8 slot, u8 pin)
{
 return mtx1_irqtab[slot][pin];
}
