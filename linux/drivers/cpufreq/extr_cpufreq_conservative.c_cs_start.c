
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_policy_dbs_info {int requested_freq; scalar_t__ down_skip; } ;
struct cpufreq_policy {int cur; int governor_data; } ;


 struct cs_policy_dbs_info* to_dbs_info (int ) ;

__attribute__((used)) static void cs_start(struct cpufreq_policy *policy)
{
 struct cs_policy_dbs_info *dbs_info = to_dbs_info(policy->governor_data);

 dbs_info->down_skip = 0;
 dbs_info->requested_freq = policy->cur;
}
