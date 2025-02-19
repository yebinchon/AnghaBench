
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_ACCESS_READ ;
 int PCI_ACCESS_WRITE ;
 scalar_t__ msp_pcibios_config_access (int ,struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int
msp_pcibios_write_config_byte(struct pci_bus *bus,
    unsigned int devfn,
    int where,
    u8 val)
{
 u32 data = 0;


 if (msp_pcibios_config_access(PCI_ACCESS_READ, bus, devfn,
     where, &data))
  return -1;


 data = (data & ~(0xff << ((where & 3) << 3))) |
   (val << ((where & 3) << 3));


 if (msp_pcibios_config_access(PCI_ACCESS_WRITE, bus, devfn,
     where, &data))
  return -1;

 return PCIBIOS_SUCCESSFUL;
}
