
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bcma_drv_pcie2 {TYPE_2__* core; } ;
struct TYPE_3__ {int rev; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int BCMA_CORE_PCIE2_CONFIGINDADDR ;
 int BCMA_CORE_PCIE2_CONFIGINDDATA ;
 int BCMA_CORE_PCIE2_LTR_STATE ;
 int PCIE2_CAP_DEVSTSCTRL2_LTRENAB ;
 int PCIE2_CAP_DEVSTSCTRL2_OFFSET ;
 int PCIE2_LTR_ACTIVE ;
 int PCIE2_LTR_SLEEP ;
 int bcma_core_pcie2_set_ltr_vals (struct bcma_drv_pcie2*) ;
 int pcie2_read32 (struct bcma_drv_pcie2*,int ) ;
 int pcie2_write32 (struct bcma_drv_pcie2*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void bcma_core_pcie2_hw_ltr_war(struct bcma_drv_pcie2 *pcie2)
{
 u8 core_rev = pcie2->core->id.rev;
 u32 devstsctr2;

 if (core_rev < 2 || core_rev == 10 || core_rev > 13)
  return;

 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR,
        PCIE2_CAP_DEVSTSCTRL2_OFFSET);
 devstsctr2 = pcie2_read32(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA);
 if (devstsctr2 & PCIE2_CAP_DEVSTSCTRL2_LTRENAB) {

  bcma_core_pcie2_set_ltr_vals(pcie2);






  devstsctr2 |= PCIE2_CAP_DEVSTSCTRL2_LTRENAB;
  pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR,
         PCIE2_CAP_DEVSTSCTRL2_OFFSET);
  pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA, devstsctr2);


  pcie2_write32(pcie2, BCMA_CORE_PCIE2_LTR_STATE,
         PCIE2_LTR_ACTIVE);
  usleep_range(1000, 2000);


  pcie2_write32(pcie2, BCMA_CORE_PCIE2_LTR_STATE,
         PCIE2_LTR_SLEEP);
  usleep_range(1000, 2000);
 }
}
