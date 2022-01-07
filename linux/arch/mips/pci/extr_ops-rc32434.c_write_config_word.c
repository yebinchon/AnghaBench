
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_ACCESS_READ ;
 int PCI_ACCESS_WRITE ;
 scalar_t__ config_access (int ,struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int
write_config_word(struct pci_bus *bus, unsigned int devfn, int where,
    u16 val)
{
 u32 data = 0;

 if (config_access(PCI_ACCESS_READ, bus, devfn, where, &data))
  return -1;

 data = (data & ~(0xffff << ((where & 3) << 3))) |
     (val << ((where & 3) << 3));

 if (config_access(PCI_ACCESS_WRITE, bus, devfn, where, &data))
  return -1;


 return PCIBIOS_SUCCESSFUL;
}
