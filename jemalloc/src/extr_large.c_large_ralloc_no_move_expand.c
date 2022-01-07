
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
struct TYPE_15__ {int * merge; } ;
typedef TYPE_1__ extent_hooks_t ;
struct TYPE_16__ {int stats; int eset_muzzy; int eset_dirty; } ;
typedef TYPE_2__ arena_t ;


 int CACHELINE ;
 int JEMALLOC_ALLOC_JUNK ;
 scalar_t__ PAGE ;
 void* PAGE_ADDR2BASE (void*) ;
 int SC_NSIZES ;
 int arena_extent_ralloc_large_expand (int *,TYPE_2__*,int *,size_t) ;
 TYPE_2__* arena_get_from_extent (int *) ;
 int arena_stats_mapped_add (int *,int *,size_t) ;
 int assert (int) ;
 scalar_t__ config_cache_oblivious ;
 scalar_t__ config_fill ;
 scalar_t__ config_stats ;
 scalar_t__ extent_addr_get (int *) ;
 int * extent_alloc_wrapper (int *,TYPE_2__*,TYPE_1__**,int ,size_t,int ,int ,int,int ,int*,int*) ;
 int extent_dalloc_wrapper (int *,TYPE_2__*,TYPE_1__**,int *) ;
 TYPE_1__* extent_hooks_get (TYPE_2__*) ;
 scalar_t__ extent_merge_wrapper (int *,TYPE_2__*,TYPE_1__**,int *,int *) ;
 int extent_past_get (int *) ;
 int extent_szind_set (int *,int ) ;
 size_t extent_usize_get (int *) ;
 int * extents_alloc (int *,TYPE_2__*,TYPE_1__**,int *,int ,size_t,int ,int ,int,int ,int*,int*) ;
 int extents_rtree ;
 int memset (void*,int ,size_t) ;
 int opt_junk_alloc ;
 int opt_zero ;
 int rtree_szind_slab_update (int *,int *,int *,uintptr_t,int ,int) ;
 int sz_size2index (size_t) ;
 int * tsdn_rtree_ctx (int *,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool
large_ralloc_no_move_expand(tsdn_t *tsdn, extent_t *extent, size_t usize,
    bool zero) {
 arena_t *arena = arena_get_from_extent(extent);
 size_t oldusize = extent_usize_get(extent);
 extent_hooks_t *extent_hooks = extent_hooks_get(arena);
 size_t trailsize = usize - oldusize;

 if (extent_hooks->merge == ((void*)0)) {
  return 1;
 }

 if (config_fill && unlikely(opt_zero)) {
  zero = 1;
 }






 bool is_zeroed_trail = zero;
 bool commit = 1;
 extent_t *trail;
 bool new_mapping;
 if ((trail = extents_alloc(tsdn, arena, &extent_hooks,
     &arena->eset_dirty, extent_past_get(extent), trailsize, 0,
     CACHELINE, 0, SC_NSIZES, &is_zeroed_trail, &commit)) != ((void*)0)
     || (trail = extents_alloc(tsdn, arena, &extent_hooks,
     &arena->eset_muzzy, extent_past_get(extent), trailsize, 0,
     CACHELINE, 0, SC_NSIZES, &is_zeroed_trail, &commit)) != ((void*)0)) {
  if (config_stats) {
   new_mapping = 0;
  }
 } else {
  if ((trail = extent_alloc_wrapper(tsdn, arena, &extent_hooks,
      extent_past_get(extent), trailsize, 0, CACHELINE, 0,
      SC_NSIZES, &is_zeroed_trail, &commit)) == ((void*)0)) {
   return 1;
  }
  if (config_stats) {
   new_mapping = 1;
  }
 }

 if (extent_merge_wrapper(tsdn, arena, &extent_hooks, extent, trail)) {
  extent_dalloc_wrapper(tsdn, arena, &extent_hooks, trail);
  return 1;
 }
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);
 szind_t szind = sz_size2index(usize);
 extent_szind_set(extent, szind);
 rtree_szind_slab_update(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)extent_addr_get(extent), szind, 0);

 if (config_stats && new_mapping) {
  arena_stats_mapped_add(tsdn, &arena->stats, trailsize);
 }

 if (zero) {
  if (config_cache_oblivious) {







   void *zbase = (void *)
       ((uintptr_t)extent_addr_get(extent) + oldusize);
   void *zpast = PAGE_ADDR2BASE((void *)((uintptr_t)zbase +
       PAGE));
   size_t nzero = (uintptr_t)zpast - (uintptr_t)zbase;
   assert(nzero > 0);
   memset(zbase, 0, nzero);
  }
  assert(is_zeroed_trail);
 } else if (config_fill && unlikely(opt_junk_alloc)) {
  memset((void *)((uintptr_t)extent_addr_get(extent) + oldusize),
      JEMALLOC_ALLOC_JUNK, usize - oldusize);
 }

 arena_extent_ralloc_large_expand(tsdn, arena, extent, oldusize);

 return 0;
}
