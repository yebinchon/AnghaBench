
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int CFGADDR (struct pci_bus*,unsigned int,int) ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 int READCFG32 (int) ;
 int WRITECFG32 (int,int) ;
 int bcm1480ht_can_access (struct pci_bus*,unsigned int) ;

__attribute__((used)) static int bcm1480ht_pcibios_write(struct pci_bus *bus, unsigned int devfn,
       int where, int size, u32 val)
{
 u32 cfgaddr = CFGADDR(bus, devfn, where);
 u32 data = 0;

 if ((size == 2) && (where & 1))
  return PCIBIOS_BAD_REGISTER_NUMBER;
 else if ((size == 4) && (where & 3))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 if (!bcm1480ht_can_access(bus, devfn))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 data = READCFG32(cfgaddr);

 if (size == 1)
  data = (data & ~(0xff << ((where & 3) << 3))) |
      (val << ((where & 3) << 3));
 else if (size == 2)
  data = (data & ~(0xffff << ((where & 3) << 3))) |
      (val << ((where & 3) << 3));
 else
  data = val;

 WRITECFG32(cfgaddr, data);

 return PCIBIOS_SUCCESSFUL;
}
