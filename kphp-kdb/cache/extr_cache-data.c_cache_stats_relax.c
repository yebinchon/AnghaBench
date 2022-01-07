
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int access_miss_counters ;
 int access_success_counters ;
 int cache_stats_counter_relax (int ) ;
 int convert_miss_counters ;
 int convert_success_counters ;

void cache_stats_relax (void) {
  cache_stats_counter_relax (convert_success_counters);
  cache_stats_counter_relax (convert_miss_counters);
  cache_stats_counter_relax (access_success_counters);
  cache_stats_counter_relax (access_miss_counters);
}
