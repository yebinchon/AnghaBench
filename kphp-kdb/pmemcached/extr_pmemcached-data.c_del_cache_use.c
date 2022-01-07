
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t* cache_next_use ;
 size_t* cache_prev_use ;

void del_cache_use (int n) {
  cache_next_use[cache_prev_use[n]] = cache_next_use[n];
  cache_prev_use[cache_next_use[n]] = cache_prev_use[n];
}
