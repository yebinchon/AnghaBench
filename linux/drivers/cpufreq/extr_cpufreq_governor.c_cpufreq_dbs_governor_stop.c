
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_dbs_info {int work_in_progress; int work_count; int work; int irq_work; int policy; } ;
struct cpufreq_policy {struct policy_dbs_info* governor_data; } ;


 int atomic_set (int *,int ) ;
 int cancel_work_sync (int *) ;
 int gov_clear_update_util (int ) ;
 int irq_work_sync (int *) ;

void cpufreq_dbs_governor_stop(struct cpufreq_policy *policy)
{
 struct policy_dbs_info *policy_dbs = policy->governor_data;

 gov_clear_update_util(policy_dbs->policy);
 irq_work_sync(&policy_dbs->irq_work);
 cancel_work_sync(&policy_dbs->work);
 atomic_set(&policy_dbs->work_count, 0);
 policy_dbs->work_in_progress = 0;
}
