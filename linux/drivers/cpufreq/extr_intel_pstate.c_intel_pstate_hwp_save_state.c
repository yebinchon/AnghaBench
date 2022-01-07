
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {size_t cpu; } ;
struct cpudata {int epp_saved; } ;


 struct cpudata** all_cpu_data ;
 int hwp_active ;
 int intel_pstate_get_epp (struct cpudata*,int ) ;

__attribute__((used)) static int intel_pstate_hwp_save_state(struct cpufreq_policy *policy)
{
 struct cpudata *cpu_data = all_cpu_data[policy->cpu];

 if (!hwp_active)
  return 0;

 cpu_data->epp_saved = intel_pstate_get_epp(cpu_data, 0);

 return 0;
}
