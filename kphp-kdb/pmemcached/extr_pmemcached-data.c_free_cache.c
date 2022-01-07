
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_free ;
 int cache_free_LRU () ;
 double cache_size ;
 double memory_for_cache ;

void free_cache (void) {

  while (!cache_free || cache_size > memory_for_cache * 0.9) {
    if (!cache_free_LRU ()) {
      break;
    }

  }
}
