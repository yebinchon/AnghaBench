
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int tsd_t ;


 int THREAD_EVENT_MIN_START_WAIT ;
 int config_prof ;
 int lg_prof_sample ;
 int log (double) ;
 int prng_lg_range_u64 (int ,int) ;
 int thread_prof_sample_event_update (int *,int) ;
 int tsd_prng_statep_get (int *) ;

void
prof_sample_threshold_update(tsd_t *tsd) {
}
