
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int kobj; } ;


 scalar_t__ WARN_ON (int) ;
 struct cpufreq_policy* cpufreq_cpu_get_raw (unsigned int) ;
 scalar_t__ cpufreq_driver ;
 int cpufreq_driver_lock ;
 int kobject_get (int *) ;
 unsigned int nr_cpu_ids ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

struct cpufreq_policy *cpufreq_cpu_get(unsigned int cpu)
{
 struct cpufreq_policy *policy = ((void*)0);
 unsigned long flags;

 if (WARN_ON(cpu >= nr_cpu_ids))
  return ((void*)0);


 read_lock_irqsave(&cpufreq_driver_lock, flags);

 if (cpufreq_driver) {

  policy = cpufreq_cpu_get_raw(cpu);
  if (policy)
   kobject_get(&policy->kobj);
 }

 read_unlock_irqrestore(&cpufreq_driver_lock, flags);

 return policy;
}
