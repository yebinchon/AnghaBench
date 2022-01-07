
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_PMU_CHIPCTL_ADDR ;
 int BCMA_CC_PMU_CHIPCTL_DATA ;
 int bcma_pmu_maskset32 (struct bcma_drv_cc*,int ,int ,int ) ;
 int bcma_pmu_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_pmu_write32 (struct bcma_drv_cc*,int ,int ) ;

void bcma_chipco_chipctl_maskset(struct bcma_drv_cc *cc,
     u32 offset, u32 mask, u32 set)
{
 bcma_pmu_write32(cc, BCMA_CC_PMU_CHIPCTL_ADDR, offset);
 bcma_pmu_read32(cc, BCMA_CC_PMU_CHIPCTL_ADDR);
 bcma_pmu_maskset32(cc, BCMA_CC_PMU_CHIPCTL_DATA, mask, set);
}
