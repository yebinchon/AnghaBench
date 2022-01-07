
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;

__attribute__((used)) static int
null_write_config(struct pci_bus *bus, unsigned int devfn, int offset,
    int len, u32 val)
{
 return PCIBIOS_DEVICE_NOT_FOUND;
}
