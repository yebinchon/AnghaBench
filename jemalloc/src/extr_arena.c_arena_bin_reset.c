
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
typedef int extent_t ;
struct TYPE_5__ {scalar_t__ curslabs; scalar_t__ curregs; } ;
struct TYPE_6__ {int lock; TYPE_1__ stats; int slabs_full; int slabs_nonfull; int * slabcur; } ;
typedef TYPE_2__ bin_t ;
typedef int arena_t ;


 int arena_bin_slabs_full_remove (int *,TYPE_2__*,int *) ;
 int arena_slab_dalloc (int ,int *,int *) ;
 scalar_t__ config_stats ;
 int * extent_heap_remove_first (int *) ;
 int * extent_list_first (int *) ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
arena_bin_reset(tsd_t *tsd, arena_t *arena, bin_t *bin) {
 extent_t *slab;

 malloc_mutex_lock(tsd_tsdn(tsd), &bin->lock);
 if (bin->slabcur != ((void*)0)) {
  slab = bin->slabcur;
  bin->slabcur = ((void*)0);
  malloc_mutex_unlock(tsd_tsdn(tsd), &bin->lock);
  arena_slab_dalloc(tsd_tsdn(tsd), arena, slab);
  malloc_mutex_lock(tsd_tsdn(tsd), &bin->lock);
 }
 while ((slab = extent_heap_remove_first(&bin->slabs_nonfull)) != ((void*)0)) {
  malloc_mutex_unlock(tsd_tsdn(tsd), &bin->lock);
  arena_slab_dalloc(tsd_tsdn(tsd), arena, slab);
  malloc_mutex_lock(tsd_tsdn(tsd), &bin->lock);
 }
 for (slab = extent_list_first(&bin->slabs_full); slab != ((void*)0);
      slab = extent_list_first(&bin->slabs_full)) {
  arena_bin_slabs_full_remove(arena, bin, slab);
  malloc_mutex_unlock(tsd_tsdn(tsd), &bin->lock);
  arena_slab_dalloc(tsd_tsdn(tsd), arena, slab);
  malloc_mutex_lock(tsd_tsdn(tsd), &bin->lock);
 }
 if (config_stats) {
  bin->stats.curregs = 0;
  bin->stats.curslabs = 0;
 }
 malloc_mutex_unlock(tsd_tsdn(tsd), &bin->lock);
}
