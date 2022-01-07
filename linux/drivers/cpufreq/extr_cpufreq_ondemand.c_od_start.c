
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct od_policy_dbs_info {int sample_type; } ;
struct cpufreq_policy {int governor_data; } ;


 int OD_NORMAL_SAMPLE ;
 int ondemand_powersave_bias_init (struct cpufreq_policy*) ;
 struct od_policy_dbs_info* to_dbs_info (int ) ;

__attribute__((used)) static void od_start(struct cpufreq_policy *policy)
{
 struct od_policy_dbs_info *dbs_info = to_dbs_info(policy->governor_data);

 dbs_info->sample_type = OD_NORMAL_SAMPLE;
 ondemand_powersave_bias_init(policy);
}
