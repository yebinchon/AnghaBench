
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int MPIDR_AFFINITY_LEVEL (unsigned int,int) ;
 unsigned int SUNXI_CPUS_PER_CLUSTER ;
 unsigned int SUNXI_NR_CLUSTERS ;
 int boot_lock ;
 unsigned int cpu_logical_map (unsigned int) ;
 int cpucfg_base ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sunxi_cluster_powerup (unsigned int) ;
 int sunxi_cpu_powerup (unsigned int,unsigned int) ;
 scalar_t__ sunxi_mc_smp_cluster_is_down (unsigned int) ;
 scalar_t__** sunxi_mc_smp_cpu_table ;
 int sunxi_mc_smp_first_comer ;
 int sync_cache_w (int*) ;

__attribute__((used)) static int sunxi_mc_smp_boot_secondary(unsigned int l_cpu, struct task_struct *idle)
{
 unsigned int mpidr, cpu, cluster;

 mpidr = cpu_logical_map(l_cpu);
 cpu = MPIDR_AFFINITY_LEVEL(mpidr, 0);
 cluster = MPIDR_AFFINITY_LEVEL(mpidr, 1);

 if (!cpucfg_base)
  return -ENODEV;
 if (cluster >= SUNXI_NR_CLUSTERS || cpu >= SUNXI_CPUS_PER_CLUSTER)
  return -EINVAL;

 spin_lock_irq(&boot_lock);

 if (sunxi_mc_smp_cpu_table[cluster][cpu])
  goto out;

 if (sunxi_mc_smp_cluster_is_down(cluster)) {
  sunxi_mc_smp_first_comer = 1;
  sunxi_cluster_powerup(cluster);
 } else {
  sunxi_mc_smp_first_comer = 0;
 }


 sync_cache_w(&sunxi_mc_smp_first_comer);
 sunxi_cpu_powerup(cpu, cluster);

out:
 sunxi_mc_smp_cpu_table[cluster][cpu]++;
 spin_unlock_irq(&boot_lock);

 return 0;
}
