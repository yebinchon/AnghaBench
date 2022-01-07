
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpu_first_thread_sibling (int) ;
 int cpu_l1_cache_map ;
 scalar_t__ cpu_online (int) ;
 int cpu_smallcore_mask (int) ;
 int cpumask_set_cpu (int,int ) ;
 scalar_t__ cpumask_test_cpu (int,struct cpumask*) ;
 int has_big_cores ;
 struct cpumask* per_cpu (int ,int) ;
 int set_cpus_related (int,int,int (*) (int)) ;
 int threads_per_core ;

__attribute__((used)) static inline void add_cpu_to_smallcore_masks(int cpu)
{
 struct cpumask *this_l1_cache_map = per_cpu(cpu_l1_cache_map, cpu);
 int i, first_thread = cpu_first_thread_sibling(cpu);

 if (!has_big_cores)
  return;

 cpumask_set_cpu(cpu, cpu_smallcore_mask(cpu));

 for (i = first_thread; i < first_thread + threads_per_core; i++) {
  if (cpu_online(i) && cpumask_test_cpu(i, this_l1_cache_map))
   set_cpus_related(i, cpu, cpu_smallcore_mask);
 }
}
