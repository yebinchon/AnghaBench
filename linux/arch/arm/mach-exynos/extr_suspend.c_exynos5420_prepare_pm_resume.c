
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_EXYNOS_MCPM ;
 int CONFIG_HW_PERF_EVENTS ;
 int EXYNOS_COMMON_CONFIGURATION (int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned int MPIDR_AFFINITY_LEVEL (unsigned int,int) ;
 int S5P_CORE_LOCAL_PWR_EN ;
 int WARN_ON (int ) ;
 int mcpm_cpu_powered_up () ;
 int pmu_raw_writel (int ,int ) ;
 unsigned int read_cpuid_mpidr () ;

__attribute__((used)) static void exynos5420_prepare_pm_resume(void)
{
 unsigned int mpidr, cluster;

 mpidr = read_cpuid_mpidr();
 cluster = MPIDR_AFFINITY_LEVEL(mpidr, 1);

 if (IS_ENABLED(CONFIG_EXYNOS_MCPM))
  WARN_ON(mcpm_cpu_powered_up());

 if (IS_ENABLED(CONFIG_HW_PERF_EVENTS) && cluster != 0) {







  pmu_raw_writel(S5P_CORE_LOCAL_PWR_EN,
    EXYNOS_COMMON_CONFIGURATION(0));
  pmu_raw_writel(0,
    EXYNOS_COMMON_CONFIGURATION(0));
 }
}
