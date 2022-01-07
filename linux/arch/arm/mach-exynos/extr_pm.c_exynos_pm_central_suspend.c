
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long S5P_CENTRAL_LOWPWR_CFG ;
 int S5P_CENTRAL_SEQ_CONFIGURATION ;
 unsigned long pmu_raw_readl (int ) ;
 int pmu_raw_writel (unsigned long,int ) ;

void exynos_pm_central_suspend(void)
{
 unsigned long tmp;


 tmp = pmu_raw_readl(S5P_CENTRAL_SEQ_CONFIGURATION);
 tmp &= ~S5P_CENTRAL_LOWPWR_CFG;
 pmu_raw_writel(tmp, S5P_CENTRAL_SEQ_CONFIGURATION);
}
