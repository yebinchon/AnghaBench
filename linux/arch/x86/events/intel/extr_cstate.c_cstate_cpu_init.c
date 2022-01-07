
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cpumask_any_and (int *,int ) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int cstate_core_cpu_mask ;
 int cstate_pkg_cpu_mask ;
 scalar_t__ has_cstate_core ;
 scalar_t__ has_cstate_pkg ;
 unsigned int nr_cpu_ids ;
 int topology_die_cpumask (unsigned int) ;
 int topology_sibling_cpumask (unsigned int) ;

__attribute__((used)) static int cstate_cpu_init(unsigned int cpu)
{
 unsigned int target;





 target = cpumask_any_and(&cstate_core_cpu_mask,
     topology_sibling_cpumask(cpu));

 if (has_cstate_core && target >= nr_cpu_ids)
  cpumask_set_cpu(cpu, &cstate_core_cpu_mask);





 target = cpumask_any_and(&cstate_pkg_cpu_mask,
     topology_die_cpumask(cpu));
 if (has_cstate_pkg && target >= nr_cpu_ids)
  cpumask_set_cpu(cpu, &cstate_pkg_cpu_mask);

 return 0;
}
