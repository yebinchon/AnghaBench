
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_freq; } ;
struct cpufreq_policy {scalar_t__ max; TYPE_1__ cpuinfo; } ;
struct TYPE_4__ {scalar_t__ max_pstate_physical; scalar_t__ max_pstate; scalar_t__ max_freq; } ;
struct cpudata {TYPE_2__ pstate; } ;


 int hwp_active ;
 int pr_debug (char*) ;

__attribute__((used)) static void intel_pstate_adjust_policy_max(struct cpufreq_policy *policy,
      struct cpudata *cpu)
{
 if (!hwp_active &&
     cpu->pstate.max_pstate_physical > cpu->pstate.max_pstate &&
     policy->max < policy->cpuinfo.max_freq &&
     policy->max > cpu->pstate.max_freq) {
  pr_debug("policy->max > max non turbo frequency\n");
  policy->max = policy->cpuinfo.max_freq;
 }
}
