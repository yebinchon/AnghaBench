
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt3883_pci_controller {int dummy; } ;


 int RT3883_PCI_REG_CFGADDR ;
 int RT3883_PCI_REG_CFGDATA ;
 int rt3883_pci_get_cfgaddr (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int rt3883_pci_w32 (struct rt3883_pci_controller*,int ,int ) ;

__attribute__((used)) static void rt3883_pci_write_cfg32(struct rt3883_pci_controller *rpc,
     unsigned bus, unsigned slot,
     unsigned func, unsigned reg, u32 val)
{
 unsigned long flags;
 u32 address;

 address = rt3883_pci_get_cfgaddr(bus, slot, func, reg);

 rt3883_pci_w32(rpc, address, RT3883_PCI_REG_CFGADDR);
 rt3883_pci_w32(rpc, val, RT3883_PCI_REG_CFGDATA);
}
