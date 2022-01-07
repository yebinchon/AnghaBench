
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S5P_WAKEUP_MASK ;
 int S5P_WAKEUP_MASK2 ;
 int pmu_raw_writel (int,int ) ;
 scalar_t__ soc_is_exynos3250 () ;

__attribute__((used)) static void exynos_set_wakeupmask(long mask)
{
 pmu_raw_writel(mask, S5P_WAKEUP_MASK);
 if (soc_is_exynos3250())
  pmu_raw_writel(0x0, S5P_WAKEUP_MASK2);
}
