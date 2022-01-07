
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_FUNC_NOT_SUPPORTED ;

__attribute__((used)) static int octeon_dummy_write_config(struct pci_bus *bus, unsigned int devfn,
         int reg, int size, u32 val)
{
 return PCIBIOS_FUNC_NOT_SUPPORTED;
}
