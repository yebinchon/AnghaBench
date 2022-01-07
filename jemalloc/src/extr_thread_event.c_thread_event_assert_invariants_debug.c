
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int tsd_t ;


 scalar_t__ THREAD_ALLOCATED_NEXT_EVENT_FAST_MAX ;
 scalar_t__ THREAD_EVENT_MAX_INTERVAL ;
 int assert (int) ;
 scalar_t__ thread_allocated_get (int *) ;
 scalar_t__ thread_allocated_last_event_get (int *) ;
 scalar_t__ thread_allocated_next_event_compute (int *) ;
 scalar_t__ thread_allocated_next_event_fast_get (int *) ;
 scalar_t__ thread_allocated_next_event_get (int *) ;
 int thread_event_active ;

void
thread_event_assert_invariants_debug(tsd_t *tsd) {
 uint64_t thread_allocated = thread_allocated_get(tsd);
 uint64_t last_event = thread_allocated_last_event_get(tsd);
 uint64_t next_event = thread_allocated_next_event_get(tsd);
 uint64_t next_event_fast = thread_allocated_next_event_fast_get(tsd);

 assert(last_event != next_event);
 if (next_event <= THREAD_ALLOCATED_NEXT_EVENT_FAST_MAX) {
  assert(next_event_fast == next_event);
 } else {
  assert(next_event_fast == 0U);
 }


 uint64_t interval = next_event - last_event;


 assert(thread_allocated - last_event < interval);

 uint64_t min_wait = thread_allocated_next_event_compute(tsd);







 assert((!thread_event_active && last_event == 0U) ||
     interval == min_wait ||
     (interval < min_wait && interval == THREAD_EVENT_MAX_INTERVAL));
}
