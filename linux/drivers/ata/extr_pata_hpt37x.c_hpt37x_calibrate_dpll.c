
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int hpt37x_calibrate_dpll(struct pci_dev *dev)
{
 u8 reg5b;
 u32 reg5c;
 int tries;

 for (tries = 0; tries < 0x5000; tries++) {
  udelay(50);
  pci_read_config_byte(dev, 0x5b, &reg5b);
  if (reg5b & 0x80) {

   for (tries = 0; tries < 0x1000; tries++) {
    pci_read_config_byte(dev, 0x5b, &reg5b);

    if ((reg5b & 0x80) == 0)
     return 0;
   }

   pci_read_config_dword(dev, 0x5c, &reg5c);
   pci_write_config_dword(dev, 0x5c, reg5c & ~0x100);
   return 1;
  }
 }

 return 0;
}
