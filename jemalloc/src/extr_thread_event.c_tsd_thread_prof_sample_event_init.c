
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int assert (int) ;
 scalar_t__ config_prof ;
 scalar_t__ opt_prof ;
 int prof_sample_threshold_update (int *) ;

__attribute__((used)) static void
tsd_thread_prof_sample_event_init(tsd_t *tsd) {
 assert(config_prof && opt_prof);
 prof_sample_threshold_update(tsd);
}
