
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct od_policy_dbs_info {scalar_t__ freq_lo; } ;
struct cpufreq_policy {int governor_data; } ;


 struct od_policy_dbs_info* to_dbs_info (int ) ;

__attribute__((used)) static void ondemand_powersave_bias_init(struct cpufreq_policy *policy)
{
 struct od_policy_dbs_info *dbs_info = to_dbs_info(policy->governor_data);

 dbs_info->freq_lo = 0;
}
