
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
struct TYPE_9__ {int lock; } ;
typedef TYPE_2__ bin_t ;
struct TYPE_10__ {TYPE_1__* bins; } ;
typedef TYPE_3__ arena_t ;
struct TYPE_12__ {unsigned int n_shards; } ;
struct TYPE_11__ {unsigned int* binshard; } ;
struct TYPE_8__ {TYPE_2__* bin_shards; } ;


 int assert (int) ;
 TYPE_5__* bin_infos ;
 int malloc_mutex_lock (int *,int *) ;
 int * tsd_arena_get (int ) ;
 TYPE_4__* tsd_binshardsp_get (int ) ;
 scalar_t__ tsdn_null (int *) ;
 int tsdn_tsd (int *) ;

bin_t *
arena_bin_choose_lock(tsdn_t *tsdn, arena_t *arena, szind_t binind,
    unsigned *binshard) {
 bin_t *bin;
 if (tsdn_null(tsdn) || tsd_arena_get(tsdn_tsd(tsdn)) == ((void*)0)) {
  *binshard = 0;
 } else {
  *binshard = tsd_binshardsp_get(tsdn_tsd(tsdn))->binshard[binind];
 }
 assert(*binshard < bin_infos[binind].n_shards);
 bin = &arena->bins[binind].bin_shards[*binshard];
 malloc_mutex_lock(tsdn, &bin->lock);

 return bin;
}
