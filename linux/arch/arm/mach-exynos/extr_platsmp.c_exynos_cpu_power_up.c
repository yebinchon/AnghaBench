
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXYNOS_ARM_CORE_CONFIGURATION (int) ;
 int S5P_CORE_AUTOWAKEUP_EN ;
 int S5P_CORE_LOCAL_PWR_EN ;
 int pmu_raw_writel (int ,int ) ;
 scalar_t__ soc_is_exynos3250 () ;

void exynos_cpu_power_up(int cpu)
{
 u32 core_conf = S5P_CORE_LOCAL_PWR_EN;

 if (soc_is_exynos3250())
  core_conf |= S5P_CORE_AUTOWAKEUP_EN;

 pmu_raw_writel(core_conf,
   EXYNOS_ARM_CORE_CONFIGURATION(cpu));
}
