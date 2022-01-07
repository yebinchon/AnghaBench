
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int ssize_t ;
typedef int extent_t ;
typedef int extent_list_t ;
typedef int extent_hooks_t ;
typedef int eset_t ;
struct TYPE_18__ {int mapped; } ;
struct TYPE_16__ {TYPE_7__ stats; int eset_muzzy; } ;
typedef TYPE_2__ arena_t ;
struct TYPE_17__ {TYPE_1__* stats; } ;
typedef TYPE_3__ arena_decay_t ;
struct TYPE_15__ {int purged; int nmadvise; int npurge; } ;


 int JEMALLOC_FALLTHROUGH ;
 size_t LG_PAGE ;
 int arena_background_thread_inactivity_check (int *,TYPE_2__*,int) ;
 int arena_muzzy_decay_ms_get (TYPE_2__*) ;
 int arena_stats_add_u64 (int *,TYPE_7__*,int *,size_t) ;
 int arena_stats_lock (int *,TYPE_7__*) ;
 int arena_stats_sub_zu (int *,TYPE_7__*,int *,size_t) ;
 int arena_stats_unlock (int *,TYPE_7__*) ;
 scalar_t__ config_stats ;
 int eset_state_get (int *) ;
 int extent_dalloc_wrapper (int *,TYPE_2__*,int **,int *) ;
 int * extent_list_first (int *) ;
 int extent_list_remove (int *,int *) ;
 int extent_purge_lazy_wrapper (int *,TYPE_2__*,int **,int *,int ,size_t) ;
 size_t extent_size_get (int *) ;




 int extents_dalloc (int *,TYPE_2__*,int **,int *,int *) ;
 int not_reached () ;

__attribute__((used)) static size_t
arena_decay_stashed(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, arena_decay_t *decay, eset_t *eset,
    bool all, extent_list_t *decay_extents, bool is_background_thread) {
 size_t nmadvise, nunmapped;
 size_t npurged;

 if (config_stats) {
  nmadvise = 0;
  nunmapped = 0;
 }
 npurged = 0;

 ssize_t muzzy_decay_ms = arena_muzzy_decay_ms_get(arena);
 for (extent_t *extent = extent_list_first(decay_extents); extent !=
     ((void*)0); extent = extent_list_first(decay_extents)) {
  if (config_stats) {
   nmadvise++;
  }
  size_t npages = extent_size_get(extent) >> LG_PAGE;
  npurged += npages;
  extent_list_remove(decay_extents, extent);
  switch (eset_state_get(eset)) {
  case 131:
   not_reached();
  case 130:
   if (!all && muzzy_decay_ms != 0 &&
       !extent_purge_lazy_wrapper(tsdn, arena,
       r_extent_hooks, extent, 0,
       extent_size_get(extent))) {
    extents_dalloc(tsdn, arena, r_extent_hooks,
        &arena->eset_muzzy, extent);
    arena_background_thread_inactivity_check(tsdn,
        arena, is_background_thread);
    break;
   }
   JEMALLOC_FALLTHROUGH;
  case 129:
   extent_dalloc_wrapper(tsdn, arena, r_extent_hooks,
       extent);
   if (config_stats) {
    nunmapped += npages;
   }
   break;
  case 128:
  default:
   not_reached();
  }
 }

 if (config_stats) {
  arena_stats_lock(tsdn, &arena->stats);
  arena_stats_add_u64(tsdn, &arena->stats, &decay->stats->npurge,
      1);
  arena_stats_add_u64(tsdn, &arena->stats,
      &decay->stats->nmadvise, nmadvise);
  arena_stats_add_u64(tsdn, &arena->stats, &decay->stats->purged,
      npurged);
  arena_stats_sub_zu(tsdn, &arena->stats, &arena->stats.mapped,
      nunmapped << LG_PAGE);
  arena_stats_unlock(tsdn, &arena->stats);
 }

 return npurged;
}
