
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_list_t ;
typedef int extent_hooks_t ;
typedef int eset_t ;
typedef int arena_t ;
struct TYPE_4__ {int purging; int mtx; } ;
typedef TYPE_1__ arena_decay_t ;


 int WITNESS_RANK_CORE ;
 size_t arena_decay_stashed (int *,int *,int **,TYPE_1__*,int *,int,int *,int) ;
 size_t arena_stash_decayed (int *,int *,int **,int *,size_t,size_t,int *) ;
 int assert (int) ;
 int * extent_hooks_get (int *) ;
 int extent_list_init (int *) ;
 int malloc_mutex_assert_owner (int *,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int tsdn_witness_tsdp_get (int *) ;
 int witness_assert_depth_to_rank (int ,int ,int) ;

__attribute__((used)) static void
arena_decay_to_limit(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, bool all, size_t npages_limit, size_t npages_decay_max,
    bool is_background_thread) {
 witness_assert_depth_to_rank(tsdn_witness_tsdp_get(tsdn),
     WITNESS_RANK_CORE, 1);
 malloc_mutex_assert_owner(tsdn, &decay->mtx);

 if (decay->purging || npages_decay_max == 0) {
  return;
 }
 decay->purging = 1;
 malloc_mutex_unlock(tsdn, &decay->mtx);

 extent_hooks_t *extent_hooks = extent_hooks_get(arena);

 extent_list_t decay_extents;
 extent_list_init(&decay_extents);

 size_t npurge = arena_stash_decayed(tsdn, arena, &extent_hooks, eset,
     npages_limit, npages_decay_max, &decay_extents);
 if (npurge != 0) {
  size_t npurged = arena_decay_stashed(tsdn, arena,
      &extent_hooks, decay, eset, all, &decay_extents,
      is_background_thread);
  assert(npurged == npurge);
 }

 malloc_mutex_lock(tsdn, &decay->mtx);
 decay->purging = 0;
}
