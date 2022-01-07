
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_9__ {int mtx; } ;
struct TYPE_8__ {int mtx; } ;
struct TYPE_10__ {int tcache_ql_mtx; TYPE_3__ decay_muzzy; TYPE_2__ decay_dirty; int extent_grow_mtx; int eset_retained; int eset_muzzy; int eset_dirty; int extent_avail_mtx; int base; int large_mtx; TYPE_1__* bins; } ;
typedef TYPE_4__ arena_t ;
struct TYPE_11__ {unsigned int n_shards; } ;
struct TYPE_7__ {int * bin_shards; } ;


 unsigned int SC_NBINS ;
 int base_postfork_parent (int *,int ) ;
 TYPE_5__* bin_infos ;
 int bin_postfork_parent (int *,int *) ;
 scalar_t__ config_stats ;
 int eset_postfork_parent (int *,int *) ;
 int malloc_mutex_postfork_parent (int *,int *) ;

void
arena_postfork_parent(tsdn_t *tsdn, arena_t *arena) {
 unsigned i;

 for (i = 0; i < SC_NBINS; i++) {
  for (unsigned j = 0; j < bin_infos[i].n_shards; j++) {
   bin_postfork_parent(tsdn,
       &arena->bins[i].bin_shards[j]);
  }
 }
 malloc_mutex_postfork_parent(tsdn, &arena->large_mtx);
 base_postfork_parent(tsdn, arena->base);
 malloc_mutex_postfork_parent(tsdn, &arena->extent_avail_mtx);
 eset_postfork_parent(tsdn, &arena->eset_dirty);
 eset_postfork_parent(tsdn, &arena->eset_muzzy);
 eset_postfork_parent(tsdn, &arena->eset_retained);
 malloc_mutex_postfork_parent(tsdn, &arena->extent_grow_mtx);
 malloc_mutex_postfork_parent(tsdn, &arena->decay_dirty.mtx);
 malloc_mutex_postfork_parent(tsdn, &arena->decay_muzzy.mtx);
 if (config_stats) {
  malloc_mutex_postfork_parent(tsdn, &arena->tcache_ql_mtx);
 }
}
