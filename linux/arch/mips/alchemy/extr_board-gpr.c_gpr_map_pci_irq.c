
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;


 int AU1550_PCI_INTA ;
 int AU1550_PCI_INTB ;

__attribute__((used)) static int gpr_map_pci_irq(const struct pci_dev *d, u8 slot, u8 pin)
{
 if ((slot == 0) && (pin == 1))
  return AU1550_PCI_INTA;
 else if ((slot == 0) && (pin == 2))
  return AU1550_PCI_INTB;

 return 0xff;
}
