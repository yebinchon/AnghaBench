
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int tsd_t ;


 int assert (int) ;
 scalar_t__ config_prof ;
 int lg_prof_sample ;
 scalar_t__ opt_prof ;
 int prof_active_get_unlocked () ;
 int prof_idump (int ) ;
 scalar_t__ prof_idump_accum (int ,scalar_t__) ;
 unsigned int prof_sample_event_wait_get (int *) ;
 scalar_t__ prof_sample_last_event_get (int *) ;
 int prof_sample_last_event_set (int *,scalar_t__) ;
 scalar_t__ thread_allocated_last_event_get (int *) ;
 int thread_prof_sample_event_update (int *,scalar_t__) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
thread_prof_sample_event_handler(tsd_t *tsd) {
 assert(config_prof && opt_prof);
 assert(prof_sample_event_wait_get(tsd) == 0U);
 uint64_t last_event = thread_allocated_last_event_get(tsd);
 uint64_t last_sample_event = prof_sample_last_event_get(tsd);
 prof_sample_last_event_set(tsd, last_event);
 if (prof_idump_accum(tsd_tsdn(tsd), last_event - last_sample_event)) {
  prof_idump(tsd_tsdn(tsd));
 }
 if (!prof_active_get_unlocked()) {







  thread_prof_sample_event_update(tsd,
      (uint64_t)(1 << lg_prof_sample));
 }
}
