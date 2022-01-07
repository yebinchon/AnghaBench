
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int AU1500_PCI_INTA ;
 int AU1500_PCI_INTB ;
 int AU1500_PCI_INTC ;
 int AU1500_PCI_INTD ;

__attribute__((used)) static int pb1550_map_pci_irq(const struct pci_dev *d, u8 slot, u8 pin)
{
 if ((slot < 12) || (slot > 13) || pin == 0)
  return -1;
 if (slot == 12) {
  switch (pin) {
  case 1: return AU1500_PCI_INTB;
  case 2: return AU1500_PCI_INTC;
  case 3: return AU1500_PCI_INTD;
  case 4: return AU1500_PCI_INTA;
  }
 }
 if (slot == 13) {
  switch (pin) {
  case 1: return AU1500_PCI_INTA;
  case 2: return AU1500_PCI_INTB;
  case 3: return AU1500_PCI_INTC;
  case 4: return AU1500_PCI_INTD;
  }
 }
 return -1;
}
