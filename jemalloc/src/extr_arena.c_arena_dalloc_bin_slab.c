
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_4__ {int curslabs; } ;
struct TYPE_5__ {TYPE_1__ stats; int lock; int * slabcur; } ;
typedef TYPE_2__ bin_t ;
typedef int arena_t ;


 int arena_slab_dalloc (int *,int *,int *) ;
 int assert (int) ;
 scalar_t__ config_stats ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static void
arena_dalloc_bin_slab(tsdn_t *tsdn, arena_t *arena, extent_t *slab,
    bin_t *bin) {
 assert(slab != bin->slabcur);

 malloc_mutex_unlock(tsdn, &bin->lock);

 arena_slab_dalloc(tsdn, arena, slab);

 malloc_mutex_lock(tsdn, &bin->lock);
 if (config_stats) {
  bin->stats.curslabs--;
 }
}
