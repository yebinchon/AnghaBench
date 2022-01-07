
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int tsd_t ;


 scalar_t__ thread_allocated_get (int *) ;
 scalar_t__ thread_allocated_last_event_get (int *) ;
 scalar_t__ thread_allocated_next_event_compute (int *) ;
 scalar_t__ thread_allocated_next_event_get (int *) ;
 int thread_event_adjust_thresholds_helper (int *,scalar_t__) ;
 int thread_event_assert_invariants (int *) ;
 int thread_event_trigger (int *,int) ;

void
thread_event_update(tsd_t *tsd) {
 uint64_t wait = thread_allocated_next_event_compute(tsd);
 thread_event_adjust_thresholds_helper(tsd, wait);

 uint64_t last_event = thread_allocated_last_event_get(tsd);


 if (thread_allocated_get(tsd) - last_event >=
     thread_allocated_next_event_get(tsd) - last_event) {
  thread_event_trigger(tsd, 1);
 } else {
  thread_event_assert_invariants(tsd);
 }
}
