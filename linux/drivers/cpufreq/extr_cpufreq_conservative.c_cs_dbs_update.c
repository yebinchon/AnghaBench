
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_dbs_info {unsigned int idle_periods; struct dbs_data* dbs_data; } ;
struct dbs_data {unsigned int up_threshold; scalar_t__ sampling_down_factor; unsigned int sampling_rate; struct cs_dbs_tuners* tuners; } ;
struct cs_policy_dbs_info {unsigned int requested_freq; scalar_t__ down_skip; } ;
struct cs_dbs_tuners {scalar_t__ freq_step; unsigned int down_threshold; } ;
struct cpufreq_policy {unsigned int max; unsigned int min; unsigned int cur; struct policy_dbs_info* governor_data; } ;


 int CPUFREQ_RELATION_H ;
 int CPUFREQ_RELATION_L ;
 unsigned int UINT_MAX ;
 int __cpufreq_driver_target (struct cpufreq_policy*,unsigned int,int ) ;
 unsigned int dbs_update (struct cpufreq_policy*) ;
 unsigned int get_freq_step (struct cs_dbs_tuners*,struct cpufreq_policy*) ;
 struct cs_policy_dbs_info* to_dbs_info (struct policy_dbs_info*) ;

__attribute__((used)) static unsigned int cs_dbs_update(struct cpufreq_policy *policy)
{
 struct policy_dbs_info *policy_dbs = policy->governor_data;
 struct cs_policy_dbs_info *dbs_info = to_dbs_info(policy_dbs);
 unsigned int requested_freq = dbs_info->requested_freq;
 struct dbs_data *dbs_data = policy_dbs->dbs_data;
 struct cs_dbs_tuners *cs_tuners = dbs_data->tuners;
 unsigned int load = dbs_update(policy);
 unsigned int freq_step;





 if (cs_tuners->freq_step == 0)
  goto out;






 if (requested_freq > policy->max || requested_freq < policy->min) {
  requested_freq = policy->cur;
  dbs_info->requested_freq = requested_freq;
 }

 freq_step = get_freq_step(cs_tuners, policy);





 if (policy_dbs->idle_periods < UINT_MAX) {
  unsigned int freq_steps = policy_dbs->idle_periods * freq_step;

  if (requested_freq > policy->min + freq_steps)
   requested_freq -= freq_steps;
  else
   requested_freq = policy->min;

  policy_dbs->idle_periods = UINT_MAX;
 }


 if (load > dbs_data->up_threshold) {
  dbs_info->down_skip = 0;


  if (requested_freq == policy->max)
   goto out;

  requested_freq += freq_step;
  if (requested_freq > policy->max)
   requested_freq = policy->max;

  __cpufreq_driver_target(policy, requested_freq, CPUFREQ_RELATION_H);
  dbs_info->requested_freq = requested_freq;
  goto out;
 }


 if (++dbs_info->down_skip < dbs_data->sampling_down_factor)
  goto out;
 dbs_info->down_skip = 0;


 if (load < cs_tuners->down_threshold) {



  if (requested_freq == policy->min)
   goto out;

  if (requested_freq > freq_step)
   requested_freq -= freq_step;
  else
   requested_freq = policy->min;

  __cpufreq_driver_target(policy, requested_freq, CPUFREQ_RELATION_L);
  dbs_info->requested_freq = requested_freq;
 }

 out:
 return dbs_data->sampling_rate;
}
