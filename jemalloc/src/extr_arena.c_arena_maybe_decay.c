
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int tsdn_t ;
typedef scalar_t__ ssize_t ;
typedef int nstime_t ;
typedef int eset_t ;
typedef int arena_t ;
struct TYPE_10__ {int epoch; int mtx; } ;
typedef TYPE_1__ arena_decay_t ;


 int arena_decay_backlog_npages_limit (TYPE_1__*) ;
 int arena_decay_deadline_init (TYPE_1__*) ;
 int arena_decay_deadline_reached (TYPE_1__*,int *) ;
 int arena_decay_epoch_advance (int *,int *,TYPE_1__*,int *,int *,int) ;
 scalar_t__ arena_decay_ms_read (TYPE_1__*) ;
 int arena_decay_to_limit (int *,int *,TYPE_1__*,int *,int,int ,int ,int) ;
 int arena_decay_try_purge (int *,int *,TYPE_1__*,int *,int ,int ,int) ;
 int assert (int) ;
 int eset_npages_get (int *) ;
 int malloc_mutex_assert_owner (int *,int *) ;
 scalar_t__ nstime_compare (int *,int *) ;
 int nstime_copy (int *,int *) ;
 int nstime_init (int *,int ) ;
 int nstime_monotonic () ;
 int nstime_update (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
arena_maybe_decay(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, bool is_background_thread) {
 malloc_mutex_assert_owner(tsdn, &decay->mtx);


 ssize_t decay_ms = arena_decay_ms_read(decay);
 if (decay_ms <= 0) {
  if (decay_ms == 0) {
   arena_decay_to_limit(tsdn, arena, decay, eset, 0,
       0, eset_npages_get(eset),
       is_background_thread);
  }
  return 0;
 }

 nstime_t time;
 nstime_init(&time, 0);
 nstime_update(&time);
 if (unlikely(!nstime_monotonic() && nstime_compare(&decay->epoch, &time)
     > 0)) {
  nstime_copy(&decay->epoch, &time);
  arena_decay_deadline_init(decay);
 } else {

  assert(nstime_compare(&decay->epoch, &time) <= 0);
 }
 bool advance_epoch = arena_decay_deadline_reached(decay, &time);
 if (advance_epoch) {
  arena_decay_epoch_advance(tsdn, arena, decay, eset, &time,
      is_background_thread);
 } else if (is_background_thread) {
  arena_decay_try_purge(tsdn, arena, decay, eset,
      eset_npages_get(eset),
      arena_decay_backlog_npages_limit(decay),
      is_background_thread);
 }

 return advance_epoch;
}
