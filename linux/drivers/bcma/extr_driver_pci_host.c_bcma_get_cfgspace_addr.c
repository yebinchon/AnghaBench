
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct bcma_drv_pci {TYPE_1__* host_controller; } ;
struct TYPE_2__ {unsigned int host_cfg_addr; } ;


 unsigned int BCMA_CORE_PCI_CFG_FUN_SHIFT ;
 unsigned int BCMA_CORE_PCI_CFG_SLOT_SHIFT ;
 int BCMA_CORE_PCI_DLLP_LSREG ;
 int BCMA_CORE_PCI_DLLP_LSREG_LINKUP ;
 int BCMA_CORE_PCI_SBTOPCI1 ;
 int BCMA_CORE_PCI_SBTOPCI_CFG0 ;
 int bcma_pcie_read (struct bcma_drv_pci*,int ) ;
 int pcicore_write32 (struct bcma_drv_pci*,int ,int ) ;

__attribute__((used)) static u32 bcma_get_cfgspace_addr(struct bcma_drv_pci *pc, unsigned int dev,
        unsigned int func, unsigned int off)
{
 u32 addr = 0;




 if (dev >= 2 || !(bcma_pcie_read(pc, BCMA_CORE_PCI_DLLP_LSREG)
     & BCMA_CORE_PCI_DLLP_LSREG_LINKUP))
  goto out;



 pcicore_write32(pc, BCMA_CORE_PCI_SBTOPCI1, BCMA_CORE_PCI_SBTOPCI_CFG0);

 addr = pc->host_controller->host_cfg_addr;
 addr |= (dev << BCMA_CORE_PCI_CFG_SLOT_SHIFT);
 addr |= (func << BCMA_CORE_PCI_CFG_FUN_SHIFT);
 addr |= (off & ~3);

out:
 return addr;
}
