
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long S5P_CENTRAL_LOWPWR_CFG ;
 int S5P_CENTRAL_SEQ_CONFIGURATION ;
 int S5P_WAKEUP_STAT ;
 unsigned long pmu_raw_readl (int ) ;
 int pmu_raw_writel (int,int ) ;

int exynos_pm_central_resume(void)
{
 unsigned long tmp;







 tmp = pmu_raw_readl(S5P_CENTRAL_SEQ_CONFIGURATION);
 if (!(tmp & S5P_CENTRAL_LOWPWR_CFG)) {
  tmp |= S5P_CENTRAL_LOWPWR_CFG;
  pmu_raw_writel(tmp, S5P_CENTRAL_SEQ_CONFIGURATION);

  pmu_raw_writel(0x0, S5P_WAKEUP_STAT);

  return -1;
 }

 return 0;
}
