
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int * arena; } ;
typedef TYPE_1__ tcache_t ;
typedef int szind_t ;
typedef int cache_bin_t ;
typedef int arena_t ;


 int arena_tcache_fill_small (int *,int *,TYPE_1__*,int *,int ) ;
 int assert (int ) ;
 void* cache_bin_alloc_easy (int *,int*,int ) ;

void *
tcache_alloc_small_hard(tsdn_t *tsdn, arena_t *arena, tcache_t *tcache,
    cache_bin_t *tbin, szind_t binind, bool *tcache_success) {
 void *ret;

 assert(tcache->arena != ((void*)0));
 arena_tcache_fill_small(tsdn, arena, tcache, tbin, binind);
 ret = cache_bin_alloc_easy(tbin, tcache_success, binind);

 return ret;
}
