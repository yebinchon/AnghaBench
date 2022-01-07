
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_6__ {int (* purge_forced ) (TYPE_1__*,int ,int ,size_t,size_t,int ) ;} ;
typedef TYPE_1__ extent_hooks_t ;
typedef int arena_t ;


 int WITNESS_RANK_CORE ;
 int arena_ind_get (int *) ;
 int extent_base_get (int *) ;
 int extent_hook_post_reentrancy (int *) ;
 int extent_hook_pre_reentrancy (int *,int *) ;
 int extent_hooks_assure_initialized (int *,TYPE_1__**) ;
 TYPE_1__ extent_hooks_default ;
 int extent_size_get (int *) ;
 int stub1 (TYPE_1__*,int ,int ,size_t,size_t,int ) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int) ;

__attribute__((used)) static bool
extent_purge_forced_impl(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent, size_t offset,
    size_t length, bool growing_retained) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, growing_retained ? 1 : 0);

 extent_hooks_assure_initialized(arena, r_extent_hooks);

 if ((*r_extent_hooks)->purge_forced == ((void*)0)) {
  return 1;
 }
 if (*r_extent_hooks != &extent_hooks_default) {
  extent_hook_pre_reentrancy(tsdn, arena);
 }
 bool err = (*r_extent_hooks)->purge_forced(*r_extent_hooks,
     extent_base_get(extent), extent_size_get(extent), offset, length,
     arena_ind_get(arena));
 if (*r_extent_hooks != &extent_hooks_default) {
  extent_hook_post_reentrancy(tsdn);
 }
 return err;
}
