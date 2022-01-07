
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_dbs_info {int list; struct dbs_data* dbs_data; } ;
struct dbs_governor {int (* exit ) (struct dbs_data*) ;int * gdbs_data; } ;
struct dbs_data {int attr_set; } ;
struct cpufreq_policy {struct policy_dbs_info* governor_data; } ;


 struct dbs_governor* dbs_governor_of (struct cpufreq_policy*) ;
 int free_policy_dbs_info (struct policy_dbs_info*,struct dbs_governor*) ;
 unsigned int gov_attr_set_put (int *,int *) ;
 int gov_dbs_data_mutex ;
 int have_governor_per_policy () ;
 int kfree (struct dbs_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dbs_data*) ;

void cpufreq_dbs_governor_exit(struct cpufreq_policy *policy)
{
 struct dbs_governor *gov = dbs_governor_of(policy);
 struct policy_dbs_info *policy_dbs = policy->governor_data;
 struct dbs_data *dbs_data = policy_dbs->dbs_data;
 unsigned int count;


 mutex_lock(&gov_dbs_data_mutex);

 count = gov_attr_set_put(&dbs_data->attr_set, &policy_dbs->list);

 policy->governor_data = ((void*)0);

 if (!count) {
  if (!have_governor_per_policy())
   gov->gdbs_data = ((void*)0);

  gov->exit(dbs_data);
  kfree(dbs_data);
 }

 free_policy_dbs_info(policy_dbs, gov);

 mutex_unlock(&gov_dbs_data_mutex);
}
