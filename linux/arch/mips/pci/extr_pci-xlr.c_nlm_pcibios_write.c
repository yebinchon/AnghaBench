
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 int pci_cfg_read_32bit (struct pci_bus*,unsigned int,int) ;
 int pci_cfg_write_32bit (struct pci_bus*,unsigned int,int,int) ;

__attribute__((used)) static int nlm_pcibios_write(struct pci_bus *bus, unsigned int devfn,
  int where, int size, u32 val)
{
 u32 data;

 if ((size == 2) && (where & 1))
  return PCIBIOS_BAD_REGISTER_NUMBER;
 else if ((size == 4) && (where & 3))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 data = pci_cfg_read_32bit(bus, devfn, where);

 if (size == 1)
  data = (data & ~(0xff << ((where & 3) << 3))) |
   (val << ((where & 3) << 3));
 else if (size == 2)
  data = (data & ~(0xffff << ((where & 3) << 3))) |
   (val << ((where & 3) << 3));
 else
  data = val;

 pci_cfg_write_32bit(bus, devfn, where, data);

 return PCIBIOS_SUCCESSFUL;
}
