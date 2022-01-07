
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int dummy; } ;


 int printk (char*,size_t,size_t,int) ;
 int* titan_irq_tab ;

int pcibios_map_platform_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
{
 int irq = titan_irq_tab[slot];

 printk("PCI: Mapping TITAN IRQ for slot %d, pin %c to irq %d\n",
  slot, pin - 1 + 'A', irq);

 return irq;
}
