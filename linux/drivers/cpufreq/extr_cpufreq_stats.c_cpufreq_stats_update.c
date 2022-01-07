
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {size_t last_index; unsigned long long last_time; int * time_in_state; } ;


 unsigned long long get_jiffies_64 () ;

__attribute__((used)) static void cpufreq_stats_update(struct cpufreq_stats *stats)
{
 unsigned long long cur_time = get_jiffies_64();

 stats->time_in_state[stats->last_index] += cur_time - stats->last_time;
 stats->last_time = cur_time;
}
