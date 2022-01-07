
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_dbs_info {int update_mutex; } ;
struct cpufreq_policy {struct policy_dbs_info* governor_data; } ;


 int cpufreq_policy_apply_limits (struct cpufreq_policy*) ;
 int gov_dbs_data_mutex ;
 int gov_update_sample_delay (struct policy_dbs_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cpufreq_dbs_governor_limits(struct cpufreq_policy *policy)
{
 struct policy_dbs_info *policy_dbs;


 mutex_lock(&gov_dbs_data_mutex);
 policy_dbs = policy->governor_data;
 if (!policy_dbs)
  goto out;

 mutex_lock(&policy_dbs->update_mutex);
 cpufreq_policy_apply_limits(policy);
 gov_update_sample_delay(policy_dbs, 0);
 mutex_unlock(&policy_dbs->update_mutex);

out:
 mutex_unlock(&gov_dbs_data_mutex);
}
