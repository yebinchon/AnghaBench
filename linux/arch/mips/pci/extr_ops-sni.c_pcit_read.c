
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {scalar_t__ number; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIMT_CONFIG_DATA ;
 int inb (int ) ;
 int inl (int) ;
 int inw (int ) ;
 int outl (int,int) ;
 int pcit_set_config_address (scalar_t__,unsigned int,int) ;

__attribute__((used)) static int pcit_read(struct pci_bus *bus, unsigned int devfn, int reg,
        int size, u32 * val)
{
 int res;






 if (bus->number == 0) {
  pcit_set_config_address(0, 0, 0x68);
  outl(inl(0xcfc) | 0xc0000000, 0xcfc);
  if ((res = pcit_set_config_address(0, devfn, 0)))
   return res;
  outl(0xffffffff, 0xcfc);
  pcit_set_config_address(0, 0, 0x68);
  if (inl(0xcfc) & 0x100000)
   return PCIBIOS_DEVICE_NOT_FOUND;
 }
 if ((res = pcit_set_config_address(bus->number, devfn, reg)))
  return res;

 switch (size) {
 case 1:
  *val = inb(PCIMT_CONFIG_DATA + (reg & 3));
  break;
 case 2:
  *val = inw(PCIMT_CONFIG_DATA + (reg & 2));
  break;
 case 4:
  *val = inl(PCIMT_CONFIG_DATA);
  break;
 }
 return 0;
}
