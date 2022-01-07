
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_pmu {int dummy; } ;
struct TYPE_2__ {unsigned int maxdie; struct rapl_pmu** pmus; } ;


 TYPE_1__* rapl_pmus ;
 unsigned int topology_logical_die_id (unsigned int) ;

__attribute__((used)) static inline struct rapl_pmu *cpu_to_rapl_pmu(unsigned int cpu)
{
 unsigned int dieid = topology_logical_die_id(cpu);





 return dieid < rapl_pmus->maxdie ? rapl_pmus->pmus[dieid] : ((void*)0);
}
