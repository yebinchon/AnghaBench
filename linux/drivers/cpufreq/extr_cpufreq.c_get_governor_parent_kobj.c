
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cpufreq_policy {struct kobject kobj; } ;


 struct kobject* cpufreq_global_kobject ;
 scalar_t__ have_governor_per_policy () ;

struct kobject *get_governor_parent_kobj(struct cpufreq_policy *policy)
{
 if (have_governor_per_policy())
  return &policy->kobj;
 else
  return cpufreq_global_kobject;
}
