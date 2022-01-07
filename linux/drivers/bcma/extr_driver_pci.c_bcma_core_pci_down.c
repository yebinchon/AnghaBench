
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_pci {int dummy; } ;


 int bcma_core_pci_extend_L1timer (struct bcma_drv_pci*,int) ;

void bcma_core_pci_down(struct bcma_drv_pci *pc)
{
 bcma_core_pci_extend_L1timer(pc, 0);
}
