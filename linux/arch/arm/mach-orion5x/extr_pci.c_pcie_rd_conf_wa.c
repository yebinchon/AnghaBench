
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int ORION5X_PCIE_WA_VIRT_BASE ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCI_SLOT (int) ;
 int orion_pcie_rd_conf_wa (int ,struct pci_bus*,int,int,int,int*) ;
 scalar_t__ pcie_valid_config (int ,int ) ;

__attribute__((used)) static int pcie_rd_conf_wa(struct pci_bus *bus, u32 devfn,
      int where, int size, u32 *val)
{
 int ret;

 if (pcie_valid_config(bus->number, PCI_SLOT(devfn)) == 0) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }






 if (where >= 0x100) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 ret = orion_pcie_rd_conf_wa(ORION5X_PCIE_WA_VIRT_BASE,
        bus, devfn, where, size, val);

 return ret;
}
