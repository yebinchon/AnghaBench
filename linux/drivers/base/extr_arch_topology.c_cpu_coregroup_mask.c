
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
typedef struct cpumask cpumask_t ;
struct TYPE_2__ {int llc_id; struct cpumask llc_sibling; struct cpumask core_sibling; } ;


 int cpu_to_node (int) ;
 TYPE_1__* cpu_topology ;
 struct cpumask* cpumask_of_node (int ) ;
 scalar_t__ cpumask_subset (struct cpumask*,struct cpumask const*) ;

const struct cpumask *cpu_coregroup_mask(int cpu)
{
 const cpumask_t *core_mask = cpumask_of_node(cpu_to_node(cpu));


 if (cpumask_subset(&cpu_topology[cpu].core_sibling, core_mask)) {

  core_mask = &cpu_topology[cpu].core_sibling;
 }
 if (cpu_topology[cpu].llc_id != -1) {
  if (cpumask_subset(&cpu_topology[cpu].llc_sibling, core_mask))
   core_mask = &cpu_topology[cpu].llc_sibling;
 }

 return core_mask;
}
