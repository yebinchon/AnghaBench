
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int* governor_data; int cpu; } ;


 int CPUFREQ_RELATION_L ;
 int EINVAL ;
 int __cpufreq_driver_target (struct cpufreq_policy*,unsigned int,int ) ;
 int cpu_is_managed ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int per_cpu (int ,int ) ;
 int pr_debug (char*,int ,unsigned int) ;
 int userspace_mutex ;

__attribute__((used)) static int cpufreq_set(struct cpufreq_policy *policy, unsigned int freq)
{
 int ret = -EINVAL;
 unsigned int *setspeed = policy->governor_data;

 pr_debug("cpufreq_set for cpu %u, freq %u kHz\n", policy->cpu, freq);

 mutex_lock(&userspace_mutex);
 if (!per_cpu(cpu_is_managed, policy->cpu))
  goto err;

 *setspeed = freq;

 ret = __cpufreq_driver_target(policy, freq, CPUFREQ_RELATION_L);
 err:
 mutex_unlock(&userspace_mutex);
 return ret;
}
