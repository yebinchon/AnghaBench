
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_TABLE_SIZE ;
 int* cache_prev_use ;
 int delete_cache_item (int) ;

int cache_free_LRU (void) {
  int e = HASH_TABLE_SIZE;
  if (cache_prev_use[e] == e) {
    return 0;
  }
  delete_cache_item (cache_prev_use[e]);
  return 1;
}
