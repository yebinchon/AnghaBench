
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXYNOS5420_ARM_USE_STANDBY_WFI0 ;
 int EXYNOS5420_KFC_USE_STANDBY_WFI0 ;
 int MPIDR_AFFINITY_LEVEL (int ,int) ;
 int S5P_CENTRAL_SEQ_OPTION ;
 int exynos_pm_central_suspend () ;
 int pmu_raw_writel (int ,int ) ;
 int read_cpuid_mpidr () ;

__attribute__((used)) static int exynos5420_pm_suspend(void)
{
 u32 this_cluster;

 exynos_pm_central_suspend();



 this_cluster = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 1);
 if (!this_cluster)
  pmu_raw_writel(EXYNOS5420_ARM_USE_STANDBY_WFI0,
    S5P_CENTRAL_SEQ_OPTION);
 else
  pmu_raw_writel(EXYNOS5420_KFC_USE_STANDBY_WFI0,
    S5P_CENTRAL_SEQ_OPTION);
 return 0;
}
