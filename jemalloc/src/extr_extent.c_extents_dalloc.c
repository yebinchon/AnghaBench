
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int eset_t ;
typedef int arena_t ;


 int WITNESS_RANK_CORE ;
 int assert (int) ;
 int extent_addr_set (int *,int *) ;
 int * extent_base_get (int *) ;
 int extent_dumpable_get (int *) ;
 int extent_record (int *,int *,int **,int *,int *,int) ;
 scalar_t__ extent_size_get (int *) ;
 int extent_zeroed_set (int *,int) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

void
extents_dalloc(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, extent_t *extent) {
 assert(extent_base_get(extent) != ((void*)0));
 assert(extent_size_get(extent) != 0);
 assert(extent_dumpable_get(extent));
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 extent_addr_set(extent, extent_base_get(extent));
 extent_zeroed_set(extent, 0);

 extent_record(tsdn, arena, r_extent_hooks, eset, extent, 0);
}
