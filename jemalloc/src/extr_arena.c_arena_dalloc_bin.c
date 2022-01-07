
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ bin_t ;
struct TYPE_9__ {TYPE_1__* bins; } ;
typedef TYPE_3__ arena_t ;
struct TYPE_7__ {TYPE_2__* bin_shards; } ;


 int arena_dalloc_bin_locked_impl (int *,TYPE_3__*,TYPE_2__*,size_t,int *,void*,int) ;
 unsigned int extent_binshard_get (int *) ;
 size_t extent_szind_get (int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static void
arena_dalloc_bin(tsdn_t *tsdn, arena_t *arena, extent_t *extent, void *ptr) {
 szind_t binind = extent_szind_get(extent);
 unsigned binshard = extent_binshard_get(extent);
 bin_t *bin = &arena->bins[binind].bin_shards[binshard];

 malloc_mutex_lock(tsdn, &bin->lock);
 arena_dalloc_bin_locked_impl(tsdn, arena, bin, binind, extent, ptr,
     0);
 malloc_mutex_unlock(tsdn, &bin->lock);
}
