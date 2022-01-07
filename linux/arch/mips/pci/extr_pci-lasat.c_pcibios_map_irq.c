
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int LASAT_IRQ_ETH0 ;
 int LASAT_IRQ_ETH1 ;
 int LASAT_IRQ_HDC ;
 int LASAT_IRQ_PCIA ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 switch (slot) {
 case 1:
 case 2:
 case 3:
  return LASAT_IRQ_PCIA + (((slot-1) + (pin-1)) % 4);
 case 4:
  return LASAT_IRQ_ETH1;
 case 5:
  return LASAT_IRQ_ETH0;
 case 6:
  return LASAT_IRQ_HDC;
 default:
  return 0xff;
 }

 return -1;
}
