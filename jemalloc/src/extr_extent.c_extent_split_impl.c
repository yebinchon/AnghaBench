
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int szind_t ;
typedef int rtree_leaf_elm_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
struct TYPE_6__ {int (* split ) (TYPE_1__*,scalar_t__,size_t,size_t,size_t,int ,int ) ;} ;
typedef TYPE_1__ extent_hooks_t ;
typedef int arena_t ;


 int EXTENT_NOT_HEAD ;
 int WITNESS_RANK_CORE ;
 int arena_ind_get (int *) ;
 int assert (int) ;
 void* extent_addr_get (int *) ;
 int * extent_alloc (int *,int *) ;
 scalar_t__ extent_base_get (int *) ;
 int extent_committed_get (int *) ;
 int extent_dalloc (int *,int *,int *) ;
 int extent_dumpable_get (int *) ;
 int extent_hook_post_reentrancy (int *) ;
 int extent_hook_pre_reentrancy (int *,int *) ;
 int extent_hooks_assure_initialized (int *,TYPE_1__**) ;
 TYPE_1__ extent_hooks_default ;
 int extent_init (int *,int ,void*,size_t,int,int ,int ,int ,int ,int ,int ,int ) ;
 int extent_lock2 (int *,int *,int *) ;
 int extent_rtree_leaf_elms_lookup (int *,int *,int *,int,int,int **,int **) ;
 int extent_rtree_write_acquired (int *,int *,int *,int *,int ,int) ;
 size_t extent_size_get (int *) ;
 int extent_size_set (int *,size_t) ;
 int extent_sn_get (int *) ;
 int extent_state_get (int *) ;
 int extent_szind_set (int *,int ) ;
 int extent_unlock2 (int *,int *,int *) ;
 int extent_zeroed_get (int *) ;
 int stub1 (TYPE_1__*,scalar_t__,size_t,size_t,size_t,int ,int ) ;
 int * tsdn_rtree_ctx (int *,int *) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int) ;

__attribute__((used)) static extent_t *
extent_split_impl(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent, size_t size_a,
    szind_t szind_a, bool slab_a, size_t size_b, szind_t szind_b, bool slab_b,
    bool growing_retained) {
 assert(extent_size_get(extent) == size_a + size_b);
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, growing_retained ? 1 : 0);

 extent_hooks_assure_initialized(arena, r_extent_hooks);

 if ((*r_extent_hooks)->split == ((void*)0)) {
  return ((void*)0);
 }

 extent_t *trail = extent_alloc(tsdn, arena);
 if (trail == ((void*)0)) {
  goto label_error_a;
 }

 extent_init(trail, arena_ind_get(arena),
     (void *)((uintptr_t)extent_base_get(extent) + size_a), size_b,
     slab_b, szind_b, extent_sn_get(extent), extent_state_get(extent),
     extent_zeroed_get(extent), extent_committed_get(extent),
     extent_dumpable_get(extent), EXTENT_NOT_HEAD);

 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);
 rtree_leaf_elm_t *lead_elm_a, *lead_elm_b;
 {
  extent_t lead;

  extent_init(&lead, arena_ind_get(arena),
      extent_addr_get(extent), size_a,
      slab_a, szind_a, extent_sn_get(extent),
      extent_state_get(extent), extent_zeroed_get(extent),
      extent_committed_get(extent), extent_dumpable_get(extent),
      EXTENT_NOT_HEAD);

  extent_rtree_leaf_elms_lookup(tsdn, rtree_ctx, &lead, 0,
      1, &lead_elm_a, &lead_elm_b);
 }
 rtree_leaf_elm_t *trail_elm_a, *trail_elm_b;
 extent_rtree_leaf_elms_lookup(tsdn, rtree_ctx, trail, 0, 1,
     &trail_elm_a, &trail_elm_b);

 if (lead_elm_a == ((void*)0) || lead_elm_b == ((void*)0) || trail_elm_a == ((void*)0)
     || trail_elm_b == ((void*)0)) {
  goto label_error_b;
 }

 extent_lock2(tsdn, extent, trail);

 if (*r_extent_hooks != &extent_hooks_default) {
  extent_hook_pre_reentrancy(tsdn, arena);
 }
 bool err = (*r_extent_hooks)->split(*r_extent_hooks, extent_base_get(extent),
     size_a + size_b, size_a, size_b, extent_committed_get(extent),
     arena_ind_get(arena));
 if (*r_extent_hooks != &extent_hooks_default) {
  extent_hook_post_reentrancy(tsdn);
 }
 if (err) {
  goto label_error_c;
 }

 extent_size_set(extent, size_a);
 extent_szind_set(extent, szind_a);

 extent_rtree_write_acquired(tsdn, lead_elm_a, lead_elm_b, extent,
     szind_a, slab_a);
 extent_rtree_write_acquired(tsdn, trail_elm_a, trail_elm_b, trail,
     szind_b, slab_b);

 extent_unlock2(tsdn, extent, trail);

 return trail;
label_error_c:
 extent_unlock2(tsdn, extent, trail);
label_error_b:
 extent_dalloc(tsdn, arena, trail);
label_error_a:
 return ((void*)0);
}
