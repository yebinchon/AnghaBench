
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpufreq_stats {unsigned int max_state; int lock; scalar_t__ total_trans; int last_time; int trans_table; int time_in_state; } ;


 int get_jiffies_64 () ;
 int memset (int ,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cpufreq_stats_clear_table(struct cpufreq_stats *stats)
{
 unsigned int count = stats->max_state;

 spin_lock(&stats->lock);
 memset(stats->time_in_state, 0, count * sizeof(u64));
 memset(stats->trans_table, 0, count * count * sizeof(int));
 stats->last_time = get_jiffies_64();
 stats->total_trans = 0;
 spin_unlock(&stats->lock);
}
