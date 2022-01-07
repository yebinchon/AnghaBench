
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int TB0219_PCI_SLOT1_IRQ ;
 int TB0219_PCI_SLOT2_IRQ ;
 int TB0219_PCI_SLOT3_IRQ ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int irq = -1;

 switch (slot) {
 case 12:
  irq = TB0219_PCI_SLOT1_IRQ;
  break;
 case 13:
  irq = TB0219_PCI_SLOT2_IRQ;
  break;
 case 14:
  irq = TB0219_PCI_SLOT3_IRQ;
  break;
 default:
  break;
 }

 return irq;
}
