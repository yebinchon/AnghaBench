
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int eset_t ;
struct TYPE_7__ {int abandoned_vm; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;
typedef TYPE_2__ arena_t ;


 int arena_stats_accum_zu (int *,size_t) ;
 scalar_t__ config_stats ;
 scalar_t__ eset_state_get (int *) ;
 int extent_dalloc (int *,TYPE_2__*,int *) ;
 int extent_purge_forced_impl (int *,TYPE_2__*,int **,int *,int ,size_t,int) ;
 scalar_t__ extent_purge_lazy_impl (int *,TYPE_2__*,int **,int *,int ,size_t,int) ;
 size_t extent_size_get (int *) ;
 scalar_t__ extent_state_dirty ;

__attribute__((used)) static void
extents_abandon_vm(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, extent_t *extent, bool growing_retained) {
 size_t sz = extent_size_get(extent);
 if (config_stats) {
  arena_stats_accum_zu(&arena->stats.abandoned_vm, sz);
 }




 if (eset_state_get(eset) == extent_state_dirty) {
  if (extent_purge_lazy_impl(tsdn, arena, r_extent_hooks,
      extent, 0, sz, growing_retained)) {
   extent_purge_forced_impl(tsdn, arena, r_extent_hooks,
       extent, 0, extent_size_get(extent),
       growing_retained);
  }
 }
 extent_dalloc(tsdn, arena, extent);
}
