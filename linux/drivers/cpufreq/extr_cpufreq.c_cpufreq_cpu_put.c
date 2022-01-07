
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int kobj; } ;


 int kobject_put (int *) ;

void cpufreq_cpu_put(struct cpufreq_policy *policy)
{
 kobject_put(&policy->kobj);
}
