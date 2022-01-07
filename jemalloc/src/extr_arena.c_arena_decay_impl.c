
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int eset_t ;
typedef int arena_t ;
struct TYPE_6__ {size_t* backlog; int mtx; } ;
typedef TYPE_1__ arena_decay_t ;


 int SMOOTHSTEP_NSTEPS ;
 int arena_decay_to_limit (int *,int *,TYPE_1__*,int *,int,int ,int ,int) ;
 int arena_maybe_decay (int *,int *,TYPE_1__*,int *,int) ;
 scalar_t__ background_thread_enabled () ;
 int background_thread_interval_check (int *,int *,TYPE_1__*,size_t) ;
 int eset_npages_get (int *) ;
 scalar_t__ have_background_thread ;
 int malloc_mutex_lock (int *,int *) ;
 scalar_t__ malloc_mutex_trylock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static bool
arena_decay_impl(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, bool is_background_thread, bool all) {
 if (all) {
  malloc_mutex_lock(tsdn, &decay->mtx);
  arena_decay_to_limit(tsdn, arena, decay, eset, all, 0,
      eset_npages_get(eset), is_background_thread);
  malloc_mutex_unlock(tsdn, &decay->mtx);

  return 0;
 }

 if (malloc_mutex_trylock(tsdn, &decay->mtx)) {

  return 1;
 }

 bool epoch_advanced = arena_maybe_decay(tsdn, arena, decay, eset,
     is_background_thread);
 size_t npages_new;
 if (epoch_advanced) {

  npages_new = decay->backlog[SMOOTHSTEP_NSTEPS-1];
 }
 malloc_mutex_unlock(tsdn, &decay->mtx);

 if (have_background_thread && background_thread_enabled() &&
     epoch_advanced && !is_background_thread) {
  background_thread_interval_check(tsdn, arena, decay,
      npages_new);
 }

 return 0;
}
