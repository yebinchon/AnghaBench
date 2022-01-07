
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int dummy; } ;


 int BCMA_CC_PMU_STAT ;
 int BCMA_CC_PMU_STAT_EXT_LPO_AVAIL ;
 int BCMA_CC_PMU_XTAL_FREQ ;
 int BCMA_CC_PMU_XTAL_FREQ_ILPCTL_MASK ;
 int BCMA_CC_PMU_XTAL_FREQ_MEASURE_SHIFT ;
 int BIT (int ) ;
 int bcma_pmu_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_pmu_write32 (struct bcma_drv_cc*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static u32 bcma_pmu_xtalfreq(struct bcma_drv_cc *cc)
{
 u32 ilp_ctl, alp_hz;

 if (!(bcma_pmu_read32(cc, BCMA_CC_PMU_STAT) &
       BCMA_CC_PMU_STAT_EXT_LPO_AVAIL))
  return 0;

 bcma_pmu_write32(cc, BCMA_CC_PMU_XTAL_FREQ,
    BIT(BCMA_CC_PMU_XTAL_FREQ_MEASURE_SHIFT));
 usleep_range(1000, 2000);

 ilp_ctl = bcma_pmu_read32(cc, BCMA_CC_PMU_XTAL_FREQ);
 ilp_ctl &= BCMA_CC_PMU_XTAL_FREQ_ILPCTL_MASK;

 bcma_pmu_write32(cc, BCMA_CC_PMU_XTAL_FREQ, 0);

 alp_hz = ilp_ctl * 32768 / 4;
 return (alp_hz + 50000) / 100000 * 100;
}
