
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIE_BASE ;
 int PCI_SLOT (int) ;
 int orion5x_pcie_lock ;
 int orion_pcie_rd_conf (int ,struct pci_bus*,int,int,int,int*) ;
 scalar_t__ pcie_valid_config (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
   int size, u32 *val)
{
 unsigned long flags;
 int ret;

 if (pcie_valid_config(bus->number, PCI_SLOT(devfn)) == 0) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 spin_lock_irqsave(&orion5x_pcie_lock, flags);
 ret = orion_pcie_rd_conf(PCIE_BASE, bus, devfn, where, size, val);
 spin_unlock_irqrestore(&orion5x_pcie_lock, flags);

 return ret;
}
