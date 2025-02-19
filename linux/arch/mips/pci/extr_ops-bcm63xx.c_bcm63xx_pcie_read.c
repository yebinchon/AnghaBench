
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {scalar_t__ number; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCIE_BUS_DEVICE ;
 scalar_t__ PCIE_DEVICE_OFFSET ;
 int bcm63xx_pcie_can_access (struct pci_bus*,unsigned int) ;
 int bcm_pcie_readl (int) ;
 int postprocess_read (int,int,int) ;

__attribute__((used)) static int bcm63xx_pcie_read(struct pci_bus *bus, unsigned int devfn,
        int where, int size, u32 *val)
{
 u32 data;
 u32 reg = where & ~3;

 if (!bcm63xx_pcie_can_access(bus, devfn))
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (bus->number == PCIE_BUS_DEVICE)
  reg += PCIE_DEVICE_OFFSET;

 data = bcm_pcie_readl(reg);

 *val = postprocess_read(data, where, size);

 return PCIBIOS_SUCCESSFUL;

}
