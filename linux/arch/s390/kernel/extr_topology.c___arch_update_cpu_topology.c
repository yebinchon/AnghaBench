
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo_15_1_x {int dummy; } ;


 scalar_t__ MACHINE_HAS_TOPOLOGY ;
 int cpumask_clear (int *) ;
 int cpus_with_topology ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_cpu_state_mutex ;
 int store_topology (struct sysinfo_15_1_x*) ;
 struct sysinfo_15_1_x* tl_info ;
 int tl_to_masks (struct sysinfo_15_1_x*) ;
 int topology_update_polarization_simple () ;
 int update_cpu_masks () ;

__attribute__((used)) static int __arch_update_cpu_topology(void)
{
 struct sysinfo_15_1_x *info = tl_info;
 int rc = 0;

 mutex_lock(&smp_cpu_state_mutex);
 cpumask_clear(&cpus_with_topology);
 if (MACHINE_HAS_TOPOLOGY) {
  rc = 1;
  store_topology(info);
  tl_to_masks(info);
 }
 update_cpu_masks();
 if (!MACHINE_HAS_TOPOLOGY)
  topology_update_polarization_simple();
 mutex_unlock(&smp_cpu_state_mutex);
 return rc;
}
