
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int CFGADDR (struct pci_bus*,unsigned int,int) ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 int READCFG32 (int ) ;
 scalar_t__ bcm1480ht_can_access (struct pci_bus*,unsigned int) ;

__attribute__((used)) static int bcm1480ht_pcibios_read(struct pci_bus *bus, unsigned int devfn,
      int where, int size, u32 * val)
{
 u32 data = 0;

 if ((size == 2) && (where & 1))
  return PCIBIOS_BAD_REGISTER_NUMBER;
 else if ((size == 4) && (where & 3))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 if (bcm1480ht_can_access(bus, devfn))
  data = READCFG32(CFGADDR(bus, devfn, where));
 else
  data = 0xFFFFFFFF;

 if (size == 1)
  *val = (data >> ((where & 3) << 3)) & 0xff;
 else if (size == 2)
  *val = (data >> ((where & 3) << 3)) & 0xffff;
 else
  *val = data;

 return PCIBIOS_SUCCESSFUL;
}
