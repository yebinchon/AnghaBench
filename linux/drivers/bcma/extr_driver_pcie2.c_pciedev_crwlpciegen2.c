
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct bcma_drv_pcie2 {TYPE_2__* core; } ;
struct TYPE_3__ {int rev; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int BCMA_CORE_PCIE2_CLK_CONTROL ;
 int BCMA_CORE_PCIE2_CONFIGINDADDR ;
 int BCMA_CORE_PCIE2_CONFIGINDDATA ;
 int COE_PVT_TL_CTRL_0_PM_DIS_L1_REENTRY_BIT ;
 int PCIEGEN2_COE_PVT_TL_CTRL_0 ;
 int PCIE_DISABLE_L1CLK_GATING ;
 int pcie2_mask32 (struct bcma_drv_pcie2*,int ,int) ;
 int pcie2_set32 (struct bcma_drv_pcie2*,int ,int ) ;
 int pcie2_write32 (struct bcma_drv_pcie2*,int ,int ) ;

__attribute__((used)) static void pciedev_crwlpciegen2(struct bcma_drv_pcie2 *pcie2)
{
 u8 core_rev = pcie2->core->id.rev;
 bool pciewar160, pciewar162;

 pciewar160 = core_rev == 7 || core_rev == 9 || core_rev == 11;
 pciewar162 = core_rev == 5 || core_rev == 7 || core_rev == 8 ||
       core_rev == 9 || core_rev == 11;

 if (!pciewar160 && !pciewar162)
  return;
}
