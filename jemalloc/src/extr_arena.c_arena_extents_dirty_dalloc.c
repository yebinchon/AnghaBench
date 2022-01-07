
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_7__ {int eset_dirty; } ;
typedef TYPE_1__ arena_t ;


 int WITNESS_RANK_CORE ;
 int arena_background_thread_inactivity_check (int *,TYPE_1__*,int) ;
 int arena_decay_dirty (int *,TYPE_1__*,int,int) ;
 scalar_t__ arena_dirty_decay_ms_get (TYPE_1__*) ;
 int extents_dalloc (int *,TYPE_1__*,int **,int *,int *) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int ) ;

void
arena_extents_dirty_dalloc(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 0);

 extents_dalloc(tsdn, arena, r_extent_hooks, &arena->eset_dirty,
     extent);
 if (arena_dirty_decay_ms_get(arena) == 0) {
  arena_decay_dirty(tsdn, arena, 0, 1);
 } else {
  arena_background_thread_inactivity_check(tsdn, arena, 0);
 }
}
