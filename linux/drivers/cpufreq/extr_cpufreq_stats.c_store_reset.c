
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int stats; } ;
typedef size_t ssize_t ;


 int cpufreq_stats_clear_table (int ) ;

__attribute__((used)) static ssize_t store_reset(struct cpufreq_policy *policy, const char *buf,
      size_t count)
{

 cpufreq_stats_clear_table(policy->stats);
 return count;
}
