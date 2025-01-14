
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct policy_dbs_info {struct dbs_data* dbs_data; } ;
struct od_dbs_tuners {scalar_t__ powersave_bias; } ;
struct dbs_data {struct od_dbs_tuners* tuners; } ;
struct cpufreq_policy {scalar_t__ cur; scalar_t__ max; struct policy_dbs_info* governor_data; } ;
struct TYPE_2__ {unsigned int (* powersave_bias_target ) (struct cpufreq_policy*,unsigned int,int ) ;} ;


 int CPUFREQ_RELATION_H ;
 int CPUFREQ_RELATION_L ;
 int __cpufreq_driver_target (struct cpufreq_policy*,unsigned int,int ) ;
 TYPE_1__ od_ops ;
 unsigned int stub1 (struct cpufreq_policy*,unsigned int,int ) ;

__attribute__((used)) static void dbs_freq_increase(struct cpufreq_policy *policy, unsigned int freq)
{
 struct policy_dbs_info *policy_dbs = policy->governor_data;
 struct dbs_data *dbs_data = policy_dbs->dbs_data;
 struct od_dbs_tuners *od_tuners = dbs_data->tuners;

 if (od_tuners->powersave_bias)
  freq = od_ops.powersave_bias_target(policy, freq,
    CPUFREQ_RELATION_H);
 else if (policy->cur == policy->max)
  return;

 __cpufreq_driver_target(policy, freq, od_tuners->powersave_bias ?
   CPUFREQ_RELATION_L : CPUFREQ_RELATION_H);
}
