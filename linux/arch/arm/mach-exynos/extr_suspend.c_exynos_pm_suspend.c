
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ;
 int S5P_CENTRAL_SEQ_OPTION ;
 int S5P_USE_STANDBY_WFE0 ;
 int S5P_USE_STANDBY_WFI0 ;
 int exynos_cpu_save_register () ;
 int exynos_pm_central_suspend () ;
 int pmu_raw_writel (int,int ) ;
 scalar_t__ read_cpuid_part () ;

__attribute__((used)) static int exynos_pm_suspend(void)
{
 exynos_pm_central_suspend();


 pmu_raw_writel(S5P_USE_STANDBY_WFI0 | S5P_USE_STANDBY_WFE0,
         S5P_CENTRAL_SEQ_OPTION);

 if (read_cpuid_part() == ARM_CPU_PART_CORTEX_A9)
  exynos_cpu_save_register();

 return 0;
}
