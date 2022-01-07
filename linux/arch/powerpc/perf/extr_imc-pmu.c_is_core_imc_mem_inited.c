
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imc_mem_info {int vbase; } ;
struct TYPE_2__ {struct imc_mem_info* mem_info; } ;


 TYPE_1__* core_imc_pmu ;
 int threads_per_core ;

__attribute__((used)) static bool is_core_imc_mem_inited(int cpu)
{
 struct imc_mem_info *mem_info;
 int core_id = (cpu / threads_per_core);

 mem_info = &core_imc_pmu->mem_info[core_id];
 if (!mem_info->vbase)
  return 0;

 return 1;
}
