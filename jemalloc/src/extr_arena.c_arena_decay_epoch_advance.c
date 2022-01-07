
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int nstime_t ;
typedef int eset_t ;
typedef int arena_t ;
struct TYPE_6__ {size_t nunpurged; } ;
typedef TYPE_1__ arena_decay_t ;


 size_t arena_decay_backlog_npages_limit (TYPE_1__*) ;
 int arena_decay_epoch_advance_helper (TYPE_1__*,int const*,size_t) ;
 int arena_decay_try_purge (int *,int *,TYPE_1__*,int *,size_t,size_t,int) ;
 int background_thread_enabled () ;
 size_t eset_npages_get (int *) ;

__attribute__((used)) static void
arena_decay_epoch_advance(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, const nstime_t *time, bool is_background_thread) {
 size_t current_npages = eset_npages_get(eset);
 arena_decay_epoch_advance_helper(decay, time, current_npages);

 size_t npages_limit = arena_decay_backlog_npages_limit(decay);

 decay->nunpurged = (npages_limit > current_npages) ? npages_limit :
     current_npages;

 if (!background_thread_enabled() || is_background_thread) {
  arena_decay_try_purge(tsdn, arena, decay, eset,
      current_npages, npages_limit, is_background_thread);
 }
}
