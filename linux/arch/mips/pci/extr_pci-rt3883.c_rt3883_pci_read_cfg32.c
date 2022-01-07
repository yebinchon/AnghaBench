
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt3883_pci_controller {int dummy; } ;


 int RT3883_PCI_REG_CFGADDR ;
 int RT3883_PCI_REG_CFGDATA ;
 int rt3883_pci_get_cfgaddr (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int rt3883_pci_r32 (struct rt3883_pci_controller*,int ) ;
 int rt3883_pci_w32 (struct rt3883_pci_controller*,int ,int ) ;

__attribute__((used)) static u32 rt3883_pci_read_cfg32(struct rt3883_pci_controller *rpc,
          unsigned bus, unsigned slot,
          unsigned func, unsigned reg)
{
 unsigned long flags;
 u32 address;
 u32 ret;

 address = rt3883_pci_get_cfgaddr(bus, slot, func, reg);

 rt3883_pci_w32(rpc, address, RT3883_PCI_REG_CFGADDR);
 ret = rt3883_pci_r32(rpc, RT3883_PCI_REG_CFGDATA);

 return ret;
}
