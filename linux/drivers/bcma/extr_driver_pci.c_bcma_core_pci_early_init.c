
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_pci {int early_setup_done; scalar_t__ hostmode; } ;


 int bcma_core_pci_fixcfg (struct bcma_drv_pci*) ;
 scalar_t__ bcma_core_pci_is_in_hostmode (struct bcma_drv_pci*) ;

void bcma_core_pci_early_init(struct bcma_drv_pci *pc)
{
 if (pc->early_setup_done)
  return;

 pc->hostmode = bcma_core_pci_is_in_hostmode(pc);
 if (pc->hostmode)
  goto out;

 bcma_core_pci_fixcfg(pc);

out:
 pc->early_setup_done = 1;
}
