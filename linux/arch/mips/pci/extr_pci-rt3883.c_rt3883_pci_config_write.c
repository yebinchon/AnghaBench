
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt3883_pci_controller {int pcie_ready; } ;
struct pci_bus {int number; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int RT3883_PCI_REG_CFGADDR ;
 int RT3883_PCI_REG_CFGDATA ;
 struct rt3883_pci_controller* pci_bus_to_rt3883_controller (struct pci_bus*) ;
 int rt3883_pci_get_cfgaddr (int,int ,int ,int) ;
 int rt3883_pci_r32 (struct rt3883_pci_controller*,int ) ;
 int rt3883_pci_w32 (struct rt3883_pci_controller*,int,int ) ;

__attribute__((used)) static int rt3883_pci_config_write(struct pci_bus *bus, unsigned int devfn,
       int where, int size, u32 val)
{
 struct rt3883_pci_controller *rpc;
 unsigned long flags;
 u32 address;
 u32 data;

 rpc = pci_bus_to_rt3883_controller(bus);

 if (!rpc->pcie_ready && bus->number == 1)
  return PCIBIOS_DEVICE_NOT_FOUND;

 address = rt3883_pci_get_cfgaddr(bus->number, PCI_SLOT(devfn),
      PCI_FUNC(devfn), where);

 rt3883_pci_w32(rpc, address, RT3883_PCI_REG_CFGADDR);
 data = rt3883_pci_r32(rpc, RT3883_PCI_REG_CFGDATA);

 switch (size) {
 case 1:
  data = (data & ~(0xff << ((where & 3) << 3))) |
         (val << ((where & 3) << 3));
  break;
 case 2:
  data = (data & ~(0xffff << ((where & 3) << 3))) |
         (val << ((where & 3) << 3));
  break;
 case 4:
  data = val;
  break;
 }

 rt3883_pci_w32(rpc, data, RT3883_PCI_REG_CFGDATA);

 return PCIBIOS_SUCCESSFUL;
}
