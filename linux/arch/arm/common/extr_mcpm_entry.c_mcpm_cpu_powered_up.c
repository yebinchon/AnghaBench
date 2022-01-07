
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_is_up ) (unsigned int,unsigned int) ;int (* cluster_is_up ) (unsigned int) ;} ;


 int EUNATCH ;
 unsigned int MPIDR_AFFINITY_LEVEL (unsigned int,int) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mcpm_cluster_unused (unsigned int) ;
 int** mcpm_cpu_use_count ;
 int mcpm_lock ;
 TYPE_1__* platform_ops ;
 unsigned int read_cpuid_mpidr () ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int,unsigned int) ;

int mcpm_cpu_powered_up(void)
{
 unsigned int mpidr, cpu, cluster;
 bool cpu_was_down, first_man;
 unsigned long flags;

 if (!platform_ops)
  return -EUNATCH;

 mpidr = read_cpuid_mpidr();
 cpu = MPIDR_AFFINITY_LEVEL(mpidr, 0);
 cluster = MPIDR_AFFINITY_LEVEL(mpidr, 1);
 local_irq_save(flags);
 arch_spin_lock(&mcpm_lock);

 cpu_was_down = !mcpm_cpu_use_count[cluster][cpu];
 first_man = mcpm_cluster_unused(cluster);

 if (first_man && platform_ops->cluster_is_up)
  platform_ops->cluster_is_up(cluster);
 if (cpu_was_down)
  mcpm_cpu_use_count[cluster][cpu] = 1;
 if (platform_ops->cpu_is_up)
  platform_ops->cpu_is_up(cpu, cluster);

 arch_spin_unlock(&mcpm_lock);
 local_irq_restore(flags);

 return 0;
}
