
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_pmu {struct intel_uncore_box** boxes; } ;
struct intel_uncore_box {int dummy; } ;


 unsigned int max_dies ;
 unsigned int topology_logical_die_id (int) ;

struct intel_uncore_box *uncore_pmu_to_box(struct intel_uncore_pmu *pmu, int cpu)
{
 unsigned int dieid = topology_logical_die_id(cpu);





 return dieid < max_dies ? pmu->boxes[dieid] : ((void*)0);
}
