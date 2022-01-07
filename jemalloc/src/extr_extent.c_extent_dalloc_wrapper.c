
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_16__ {int (* purge_lazy ) (TYPE_1__*,int ,int ,int ,int ,int ) ;int (* purge_forced ) (TYPE_1__*,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_1__ extent_hooks_t ;
struct TYPE_17__ {int eset_retained; } ;
typedef TYPE_2__ arena_t ;


 int WITNESS_RANK_CORE ;
 int arena_ind_get (TYPE_2__*) ;
 int assert (int ) ;
 scalar_t__ config_prof ;
 int extent_base_get (int *) ;
 int extent_committed_get (int *) ;
 int extent_dalloc_wrapper_try (int *,TYPE_2__*,TYPE_1__**,int *) ;
 int extent_decommit_wrapper (int *,TYPE_2__*,TYPE_1__**,int *,int ,int ) ;
 int extent_deregister (int *,int *) ;
 int extent_dumpable_get (int *) ;
 int extent_gdump_sub (int *,int *) ;
 int extent_hook_post_reentrancy (int *) ;
 int extent_hook_pre_reentrancy (int *,TYPE_2__*) ;
 TYPE_1__ extent_hooks_default ;
 scalar_t__ extent_may_dalloc () ;
 int extent_record (int *,TYPE_2__*,TYPE_1__**,int *,int *,int) ;
 int extent_reregister (int *,int *) ;
 int extent_size_get (int *) ;
 scalar_t__ extent_state_get (int *) ;
 scalar_t__ extent_state_muzzy ;
 int extent_zeroed_set (int *,int) ;
 int stub1 (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int stub2 (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

void
extent_dalloc_wrapper(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent) {
 assert(extent_dumpable_get(extent));
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);


 if (*r_extent_hooks != &extent_hooks_default || extent_may_dalloc()) {




  extent_deregister(tsdn, extent);
  if (!extent_dalloc_wrapper_try(tsdn, arena, r_extent_hooks,
      extent)) {
   return;
  }
  extent_reregister(tsdn, extent);
 }

 if (*r_extent_hooks != &extent_hooks_default) {
  extent_hook_pre_reentrancy(tsdn, arena);
 }

 bool zeroed;
 if (!extent_committed_get(extent)) {
  zeroed = 1;
 } else if (!extent_decommit_wrapper(tsdn, arena, r_extent_hooks, extent,
     0, extent_size_get(extent))) {
  zeroed = 1;
 } else if ((*r_extent_hooks)->purge_forced != ((void*)0) &&
     !(*r_extent_hooks)->purge_forced(*r_extent_hooks,
     extent_base_get(extent), extent_size_get(extent), 0,
     extent_size_get(extent), arena_ind_get(arena))) {
  zeroed = 1;
 } else if (extent_state_get(extent) == extent_state_muzzy ||
     ((*r_extent_hooks)->purge_lazy != ((void*)0) &&
     !(*r_extent_hooks)->purge_lazy(*r_extent_hooks,
     extent_base_get(extent), extent_size_get(extent), 0,
     extent_size_get(extent), arena_ind_get(arena)))) {
  zeroed = 0;
 } else {
  zeroed = 0;
 }
 if (*r_extent_hooks != &extent_hooks_default) {
  extent_hook_post_reentrancy(tsdn);
 }
 extent_zeroed_set(extent, zeroed);

 if (config_prof) {
  extent_gdump_sub(tsdn, extent);
 }

 extent_record(tsdn, arena, r_extent_hooks, &arena->eset_retained,
     extent, 0);
}
