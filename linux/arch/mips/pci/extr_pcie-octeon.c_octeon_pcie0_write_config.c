
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int octeon_pcie_write_config (int ,struct pci_bus*,unsigned int,int,int,int ) ;

__attribute__((used)) static int octeon_pcie0_write_config(struct pci_bus *bus, unsigned int devfn,
         int reg, int size, u32 val)
{
 return octeon_pcie_write_config(0, bus, devfn, reg, size, val);
}
