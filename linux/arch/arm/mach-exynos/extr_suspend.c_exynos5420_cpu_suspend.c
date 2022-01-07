
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_EXYNOS_MCPM ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned int MPIDR_AFFINITY_LEVEL (unsigned int,int) ;
 int exynos_cpu_resume ;
 int mcpm_cpu_suspend () ;
 int mcpm_set_entry_vector (unsigned int,unsigned int,int ) ;
 int pr_info (char*) ;
 unsigned int read_cpuid_mpidr () ;

__attribute__((used)) static int exynos5420_cpu_suspend(unsigned long arg)
{

 unsigned int mpidr = read_cpuid_mpidr();
 unsigned int cluster = MPIDR_AFFINITY_LEVEL(mpidr, 1);
 unsigned int cpu = MPIDR_AFFINITY_LEVEL(mpidr, 0);

 if (IS_ENABLED(CONFIG_EXYNOS_MCPM)) {
  mcpm_set_entry_vector(cpu, cluster, exynos_cpu_resume);
  mcpm_cpu_suspend();
 }

 pr_info("Failed to suspend the system\n");


 return 1;
}
