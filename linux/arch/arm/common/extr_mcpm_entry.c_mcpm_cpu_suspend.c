
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_suspend_prepare ) (unsigned int,unsigned int) ;} ;


 unsigned int MPIDR_AFFINITY_LEVEL (unsigned int,int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int mcpm_cpu_power_down () ;
 int mcpm_lock ;
 TYPE_1__* platform_ops ;
 unsigned int read_cpuid_mpidr () ;
 int stub1 (unsigned int,unsigned int) ;

void mcpm_cpu_suspend(void)
{
 if (WARN_ON_ONCE(!platform_ops))
  return;


 if (platform_ops->cpu_suspend_prepare) {
  unsigned int mpidr = read_cpuid_mpidr();
  unsigned int cpu = MPIDR_AFFINITY_LEVEL(mpidr, 0);
  unsigned int cluster = MPIDR_AFFINITY_LEVEL(mpidr, 1);
  arch_spin_lock(&mcpm_lock);
  platform_ops->cpu_suspend_prepare(cpu, cluster);
  arch_spin_unlock(&mcpm_lock);
 }
 mcpm_cpu_power_down();
}
