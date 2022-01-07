
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amortization_counter_precise {int dummy; } ;


 int * TAT ;
 int amortization_counter_precise_increment (int *,int ,int ) ;
 int stats_counters ;

void cache_stats_counter_relax (struct amortization_counter_precise *C) {
  int i;
  for (i = 0; i < stats_counters; i++) {
    amortization_counter_precise_increment (&TAT[i], C++, 0);
  }
}
