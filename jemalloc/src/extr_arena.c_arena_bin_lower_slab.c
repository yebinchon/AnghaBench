
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_6__ {int reslabs; } ;
struct TYPE_7__ {TYPE_1__ stats; int * slabcur; } ;
typedef TYPE_2__ bin_t ;
typedef int arena_t ;


 int arena_bin_slabs_full_insert (int *,TYPE_2__*,int *) ;
 int arena_bin_slabs_nonfull_insert (TYPE_2__*,int *) ;
 int assert (int) ;
 scalar_t__ config_stats ;
 scalar_t__ extent_nfree_get (int *) ;
 scalar_t__ extent_snad_comp (int *,int *) ;

__attribute__((used)) static void
arena_bin_lower_slab(tsdn_t *tsdn, arena_t *arena, extent_t *slab,
    bin_t *bin) {
 assert(extent_nfree_get(slab) > 0);







 if (bin->slabcur != ((void*)0) && extent_snad_comp(bin->slabcur, slab) > 0) {

  if (extent_nfree_get(bin->slabcur) > 0) {
   arena_bin_slabs_nonfull_insert(bin, bin->slabcur);
  } else {
   arena_bin_slabs_full_insert(arena, bin, bin->slabcur);
  }
  bin->slabcur = slab;
  if (config_stats) {
   bin->stats.reslabs++;
  }
 } else {
  arena_bin_slabs_nonfull_insert(bin, slab);
 }
}
