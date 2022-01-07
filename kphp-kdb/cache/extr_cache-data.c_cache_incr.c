
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_amortization_table {int dummy; } ;
struct cache_uri {int * data; } ;
struct amortization_counter {scalar_t__ value; } ;


 int CACHE_STAT_MAX_ACOUNTERS ;
 int CORRECLATION_STATS_BUCKETS ;
 struct time_amortization_table* TAT ;
 size_t acounter_off ;
 int amortization_counter_increment (int ,int ,int) ;
 int amortization_counter_precise_increment (struct time_amortization_table*,scalar_t__,int) ;
 int amortization_counter_types ;
 int assert (int) ;
 int cache_uri_bucket_reuse (struct cache_uri*) ;
 int**** correlaction_stats ;
 scalar_t__ cum_access_counters ;

void cache_incr (struct cache_uri *U, int t) {



  int i;
  struct amortization_counter *C = (struct amortization_counter *) &U->data[acounter_off];
  struct time_amortization_table *T = TAT;
  for (i = 0; i < amortization_counter_types; i++) {







    amortization_counter_precise_increment (T, cum_access_counters + i, t);
    amortization_counter_increment (T++, C++, t);
  }
  cache_uri_bucket_reuse (U);
}
