
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef scalar_t__ extent_split_interior_result_t ;
typedef int extent_hooks_t ;
typedef int eset_t ;
typedef int arena_t ;


 int assert (int) ;
 void* extent_base_get (int *) ;
 int extent_deactivate (int *,int *,int *,int *) ;
 int extent_deregister (int *,int *) ;
 int extent_deregister_no_gdump_sub (int *,int *) ;
 int * extent_lock_from_addr (int *,int *,void*,int) ;
 scalar_t__ extent_split_interior (int *,int *,int **,int *,int **,int **,int **,int **,int **,void*,size_t,size_t,size_t,int,int ,int) ;
 scalar_t__ extent_split_interior_error ;
 scalar_t__ extent_split_interior_ok ;
 int extents_abandon_vm (int *,int *,int **,int *,int *,int) ;
 int maps_coalesce ;
 int opt_retain ;
 int unreachable () ;

__attribute__((used)) static extent_t *
extent_recycle_split(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx, eset_t *eset,
    void *new_addr, size_t size, size_t pad, size_t alignment, bool slab,
    szind_t szind, extent_t *extent, bool growing_retained) {
 extent_t *lead;
 extent_t *trail;
 extent_t *to_leak;
 extent_t *to_salvage;

 extent_split_interior_result_t result = extent_split_interior(
     tsdn, arena, r_extent_hooks, rtree_ctx, &extent, &lead, &trail,
     &to_leak, &to_salvage, new_addr, size, pad, alignment, slab, szind,
     growing_retained);

 if (!maps_coalesce && result != extent_split_interior_ok
     && !opt_retain) {




  assert(to_leak != ((void*)0) && lead == ((void*)0) && trail == ((void*)0));
  extent_deactivate(tsdn, arena, eset, to_leak);
  return ((void*)0);
 }

 if (result == extent_split_interior_ok) {
  if (lead != ((void*)0)) {
   extent_deactivate(tsdn, arena, eset, lead);
  }
  if (trail != ((void*)0)) {
   extent_deactivate(tsdn, arena, eset, trail);
  }
  return extent;
 } else {




  assert(result == extent_split_interior_error);
  if (to_salvage != ((void*)0)) {
   extent_deregister(tsdn, to_salvage);
  }
  if (to_leak != ((void*)0)) {
   void *leak = extent_base_get(to_leak);
   extent_deregister_no_gdump_sub(tsdn, to_leak);
   extents_abandon_vm(tsdn, arena, r_extent_hooks, eset,
       to_leak, growing_retained);
   assert(extent_lock_from_addr(tsdn, rtree_ctx, leak,
       0) == ((void*)0));
  }
  return ((void*)0);
 }
 unreachable();
}
