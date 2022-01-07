
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;


 int K_BCM1480_INT_PCI_INTA ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 if (pin == 0)
  return -1;

 return K_BCM1480_INT_PCI_INTA - 1 + pin;
}
