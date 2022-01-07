
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {size_t cpu; } ;
struct TYPE_3__ {scalar_t__ epp_policy; } ;


 TYPE_1__** all_cpu_data ;
 int hwp_active ;
 int intel_pstate_hwp_enable (TYPE_1__*) ;
 int intel_pstate_hwp_set (size_t) ;
 int intel_pstate_limits_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int intel_pstate_resume(struct cpufreq_policy *policy)
{
 if (!hwp_active)
  return 0;

 mutex_lock(&intel_pstate_limits_lock);

 if (policy->cpu == 0)
  intel_pstate_hwp_enable(all_cpu_data[policy->cpu]);

 all_cpu_data[policy->cpu]->epp_policy = 0;
 intel_pstate_hwp_set(policy->cpu);

 mutex_unlock(&intel_pstate_limits_lock);

 return 0;
}
