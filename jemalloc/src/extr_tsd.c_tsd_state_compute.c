
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tsd_t ;


 scalar_t__ malloc_slow ;
 scalar_t__ tsd_global_slow () ;
 scalar_t__ tsd_local_slow (int *) ;
 int tsd_nominal (int *) ;
 int tsd_state_get (int *) ;
 int tsd_state_nominal ;
 int tsd_state_nominal_slow ;

__attribute__((used)) static uint8_t
tsd_state_compute(tsd_t *tsd) {
 if (!tsd_nominal(tsd)) {
  return tsd_state_get(tsd);
 }

 if (malloc_slow || tsd_local_slow(tsd) || tsd_global_slow()) {
  return tsd_state_nominal_slow;
 } else {
  return tsd_state_nominal;
 }
}
