
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int * governor_data; } ;


 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int userspace_mutex ;

__attribute__((used)) static void cpufreq_userspace_policy_exit(struct cpufreq_policy *policy)
{
 mutex_lock(&userspace_mutex);
 kfree(policy->governor_data);
 policy->governor_data = ((void*)0);
 mutex_unlock(&userspace_mutex);
}
