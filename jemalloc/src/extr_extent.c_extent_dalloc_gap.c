
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int * EXTENT_HOOKS_INITIALIZER ;
 int WITNESS_RANK_CORE ;
 int extent_dalloc (int *,int *,int *) ;
 int extent_dalloc_wrapper (int *,int *,int **,int *) ;
 scalar_t__ extent_register (int *,int *) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

void
extent_dalloc_gap(tsdn_t *tsdn, arena_t *arena, extent_t *extent) {
 extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;

 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 if (extent_register(tsdn, extent)) {
  extent_dalloc(tsdn, arena, extent);
  return;
 }
 extent_dalloc_wrapper(tsdn, arena, &extent_hooks, extent);
}
