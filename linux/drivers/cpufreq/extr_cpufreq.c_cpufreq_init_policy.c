
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {scalar_t__ last_policy; scalar_t__ policy; struct cpufreq_governor* governor; int cpu; int last_governor; } ;
struct cpufreq_governor {int name; } ;


 int ENODATA ;
 struct cpufreq_governor* cpufreq_default_governor () ;
 int cpufreq_parse_policy (int ,struct cpufreq_policy*) ;
 int cpufreq_set_policy (struct cpufreq_policy*,struct cpufreq_policy*) ;
 struct cpufreq_governor* find_governor (int ) ;
 scalar_t__ has_target () ;
 int memcpy (struct cpufreq_policy*,struct cpufreq_policy*,int) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int cpufreq_init_policy(struct cpufreq_policy *policy)
{
 struct cpufreq_governor *gov = ((void*)0), *def_gov = ((void*)0);
 struct cpufreq_policy new_policy;

 memcpy(&new_policy, policy, sizeof(*policy));

 def_gov = cpufreq_default_governor();

 if (has_target()) {




  gov = find_governor(policy->last_governor);
  if (gov) {
   pr_debug("Restoring governor %s for cpu %d\n",
    policy->governor->name, policy->cpu);
  } else {
   if (!def_gov)
    return -ENODATA;
   gov = def_gov;
  }
  new_policy.governor = gov;
 } else {

  if (policy->last_policy) {
   new_policy.policy = policy->last_policy;
  } else {
   if (!def_gov)
    return -ENODATA;
   cpufreq_parse_policy(def_gov->name, &new_policy);
  }
 }

 return cpufreq_set_policy(policy, &new_policy);
}
