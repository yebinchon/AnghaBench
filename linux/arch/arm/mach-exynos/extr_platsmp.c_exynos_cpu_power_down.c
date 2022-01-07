
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXYNOS5_ARM_CORE0_SYS_PWR_REG ;
 int EXYNOS_ARM_CORE_CONFIGURATION (int) ;
 int S5P_CORE_LOCAL_PWR_EN ;
 int pmu_raw_readl (int ) ;
 int pmu_raw_writel (int,int ) ;
 scalar_t__ soc_is_exynos5420 () ;
 scalar_t__ soc_is_exynos5800 () ;

void exynos_cpu_power_down(int cpu)
{
 u32 core_conf;

 if (cpu == 0 && (soc_is_exynos5420() || soc_is_exynos5800())) {





  int val = pmu_raw_readl(EXYNOS5_ARM_CORE0_SYS_PWR_REG);

  if (!(val & S5P_CORE_LOCAL_PWR_EN))
   return;
 }

 core_conf = pmu_raw_readl(EXYNOS_ARM_CORE_CONFIGURATION(cpu));
 core_conf &= ~S5P_CORE_LOCAL_PWR_EN;
 pmu_raw_writel(core_conf, EXYNOS_ARM_CORE_CONFIGURATION(cpu));
}
