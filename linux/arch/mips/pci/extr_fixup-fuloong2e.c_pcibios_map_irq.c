
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int devfn; } ;


 int LOONGSON_IRQ_BASE ;
 int PCI_FUNC (int ) ;
 scalar_t__ sb_slot ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int irq = 0;

 if (slot == sb_slot) {
  switch (PCI_FUNC(dev->devfn)) {
  case 2:
   irq = 10;
   break;
  case 3:
   irq = 11;
   break;
  case 5:
   irq = 9;
   break;
  }
 } else {
  irq = LOONGSON_IRQ_BASE + 25 + pin;
 }
 return irq;

}
