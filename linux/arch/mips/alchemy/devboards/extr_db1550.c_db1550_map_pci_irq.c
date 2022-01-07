
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int AU1550_PCI_INTA ;
 int AU1550_PCI_INTB ;
 int AU1550_PCI_INTC ;
 int AU1550_PCI_INTD ;

__attribute__((used)) static int db1550_map_pci_irq(const struct pci_dev *d, u8 slot, u8 pin)
{
 if ((slot < 11) || (slot > 13) || pin == 0)
  return -1;
 if (slot == 11)
  return (pin == 1) ? AU1550_PCI_INTC : 0xff;
 if (slot == 12) {
  switch (pin) {
  case 1: return AU1550_PCI_INTB;
  case 2: return AU1550_PCI_INTC;
  case 3: return AU1550_PCI_INTD;
  case 4: return AU1550_PCI_INTA;
  }
 }
 if (slot == 13) {
  switch (pin) {
  case 1: return AU1550_PCI_INTA;
  case 2: return AU1550_PCI_INTB;
  case 3: return AU1550_PCI_INTC;
  case 4: return AU1550_PCI_INTD;
  }
 }
 return -1;
}
