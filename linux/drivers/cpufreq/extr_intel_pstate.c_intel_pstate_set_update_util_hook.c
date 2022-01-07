
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ time; } ;
struct cpudata {int update_util_set; int update_util; TYPE_1__ sample; } ;


 struct cpudata** all_cpu_data ;
 int cpufreq_add_update_util_hook (unsigned int,int *,int ) ;
 scalar_t__ hwp_active ;
 int hwp_boost ;
 int intel_pstate_update_util ;
 int intel_pstate_update_util_hwp ;

__attribute__((used)) static void intel_pstate_set_update_util_hook(unsigned int cpu_num)
{
 struct cpudata *cpu = all_cpu_data[cpu_num];

 if (hwp_active && !hwp_boost)
  return;

 if (cpu->update_util_set)
  return;


 cpu->sample.time = 0;
 cpufreq_add_update_util_hook(cpu_num, &cpu->update_util,
         (hwp_active ?
          intel_pstate_update_util_hwp :
          intel_pstate_update_util));
 cpu->update_util_set = 1;
}
