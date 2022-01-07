
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_topology {int thread_sibling; int core_sibling; int llc_sibling; } ;


 struct cpu_topology* cpu_topology ;
 int cpumask_clear (int *) ;
 int cpumask_set_cpu (int,int *) ;

__attribute__((used)) static void clear_cpu_topology(int cpu)
{
 struct cpu_topology *cpu_topo = &cpu_topology[cpu];

 cpumask_clear(&cpu_topo->llc_sibling);
 cpumask_set_cpu(cpu, &cpu_topo->llc_sibling);

 cpumask_clear(&cpu_topo->core_sibling);
 cpumask_set_cpu(cpu, &cpu_topo->core_sibling);
 cpumask_clear(&cpu_topo->thread_sibling);
 cpumask_set_cpu(cpu, &cpu_topo->thread_sibling);
}
