
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCI_ACCESS_READ ;
 int config_access (int ,struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int read_config_byte(struct pci_bus *bus, unsigned int devfn,
       int where, u8 *val)
{
 u32 data;
 int ret = config_access(PCI_ACCESS_READ, bus, devfn, where, &data);

 if (where & 1)
  data >>= 8;
 if (where & 2)
  data >>= 16;
 *val = data & 0xff;
 return ret;
}
