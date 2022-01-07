
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct cache_uri {scalar_t__ local_copy; struct cache_uri* hnext; } ;
struct TYPE_7__ {int max_size; int compare; scalar_t__ size; } ;
typedef TYPE_1__ cache_heap_t ;


 int CACHE_MAX_HEAP_SIZE ;
 struct cache_uri** H ;
 int cache_dump_priority_heap (char*,TYPE_1__*,int) ;
 int cache_heap_insert (TYPE_1__*,struct cache_uri*) ;
 int cache_heap_sort (TYPE_1__*) ;
 int cached_heap_cmp ;
 int uncached_heap_cmp ;
 int uri_hash_prime ;
 int verbosity ;

int cache_get_priority_heaps (cache_heap_t *heap_cached, cache_heap_t *heap_uncached, int cached_limit, int uncached_limit, int *r1, int *r2) {
  int i;
  struct cache_uri *U;
  if (cached_limit == 0) {
    cached_limit = CACHE_MAX_HEAP_SIZE;
  }
  if (uncached_limit == 0) {
    uncached_limit = CACHE_MAX_HEAP_SIZE;
  }
  heap_cached->size = 0;
  heap_cached->max_size = (cached_limit < CACHE_MAX_HEAP_SIZE) ? cached_limit : CACHE_MAX_HEAP_SIZE;
  heap_cached->compare = cached_heap_cmp;
  heap_uncached->size = 0;
  heap_uncached->max_size = (uncached_limit < CACHE_MAX_HEAP_SIZE) ? uncached_limit : CACHE_MAX_HEAP_SIZE;
  heap_uncached->compare = uncached_heap_cmp;
  for (i = 0; i < uri_hash_prime; i++) {
    for (U = H[i]; U != ((void*)0); U = U->hnext) {

      cache_heap_insert (U->local_copy ? heap_cached : heap_uncached, U);
    }
  }
  *r1 = cache_heap_sort (heap_cached);
  if (verbosity >= 3) {
    cache_dump_priority_heap ("cached", heap_cached, *r1);
  }
  *r2 = cache_heap_sort (heap_uncached);
  if (verbosity >= 3) {
    cache_dump_priority_heap ("uncached", heap_uncached, *r2);
  }


  return 0;
}
