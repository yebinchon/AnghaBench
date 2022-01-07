
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct bcma_drv_cc {TYPE_1__ pmu; } ;


 int BCMA_CC_PMU_CTL ;
 int BCMA_CC_PMU_CTL_NOILPONW ;
 int bcma_pmu_mask32 (struct bcma_drv_cc*,int ,int ) ;
 int bcma_pmu_pll_init (struct bcma_drv_cc*) ;
 int bcma_pmu_resources_init (struct bcma_drv_cc*) ;
 int bcma_pmu_set32 (struct bcma_drv_cc*,int ,int ) ;
 int bcma_pmu_workarounds (struct bcma_drv_cc*) ;

void bcma_pmu_init(struct bcma_drv_cc *cc)
{
 if (cc->pmu.rev == 1)
  bcma_pmu_mask32(cc, BCMA_CC_PMU_CTL,
    ~BCMA_CC_PMU_CTL_NOILPONW);
 else
  bcma_pmu_set32(cc, BCMA_CC_PMU_CTL,
          BCMA_CC_PMU_CTL_NOILPONW);

 bcma_pmu_pll_init(cc);
 bcma_pmu_resources_init(cc);
 bcma_pmu_workarounds(cc);
}
