
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_TABLE_SIZE ;
 size_t* cache_next_use ;
 int* cache_prev_use ;

void add_cache_use (int n) {
  int e = HASH_TABLE_SIZE;
  cache_next_use[n] = cache_next_use[e];
  cache_prev_use[cache_next_use[n]] = n;
  cache_prev_use[n] = e;
  cache_next_use[e] = n;
}
