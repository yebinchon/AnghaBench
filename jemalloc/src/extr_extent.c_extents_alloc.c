
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int eset_t ;
typedef int arena_t ;


 int WITNESS_RANK_CORE ;
 int assert (int) ;
 scalar_t__ extent_dumpable_get (int *) ;
 int * extent_recycle (int *,int *,int **,int *,void*,size_t,size_t,size_t,int,int ,int*,int*,int) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

extent_t *
extents_alloc(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
 assert(size + pad != 0);
 assert(alignment != 0);
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 extent_t *extent = extent_recycle(tsdn, arena, r_extent_hooks, eset,
     new_addr, size, pad, alignment, slab, szind, zero, commit, 0);
 assert(extent == ((void*)0) || extent_dumpable_get(extent));
 return extent;
}
