
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int assert (int) ;
 int assert_tsd_data_cleanup_done (int *) ;
 scalar_t__ tsd_booted ;
 int tsd_data_init (int *) ;
 int tsd_data_init_nocleanup (int *) ;
 int tsd_fast (int *) ;
 int* tsd_reentrancy_levelp_get (int *) ;
 int tsd_set (int *) ;
 int tsd_slow_update (int *) ;
 scalar_t__ tsd_state_get (int *) ;
 scalar_t__ tsd_state_minimal_initialized ;
 scalar_t__ tsd_state_nominal ;
 scalar_t__ tsd_state_nominal_recompute ;
 scalar_t__ tsd_state_nominal_slow ;
 scalar_t__ tsd_state_purgatory ;
 scalar_t__ tsd_state_reincarnated ;
 int tsd_state_set (int *,scalar_t__) ;
 scalar_t__ tsd_state_uninitialized ;

tsd_t *
tsd_fetch_slow(tsd_t *tsd, bool minimal) {
 assert(!tsd_fast(tsd));

 if (tsd_state_get(tsd) == tsd_state_nominal_slow) {






 } else if (tsd_state_get(tsd) == tsd_state_nominal_recompute) {
  tsd_slow_update(tsd);
 } else if (tsd_state_get(tsd) == tsd_state_uninitialized) {
  if (!minimal) {
   if (tsd_booted) {
    tsd_state_set(tsd, tsd_state_nominal);
    tsd_slow_update(tsd);

    tsd_set(tsd);
    tsd_data_init(tsd);
   }
  } else {
   tsd_state_set(tsd, tsd_state_minimal_initialized);
   tsd_set(tsd);
   tsd_data_init_nocleanup(tsd);
  }
 } else if (tsd_state_get(tsd) == tsd_state_minimal_initialized) {
  if (!minimal) {

   tsd_state_set(tsd, tsd_state_nominal);
   assert(*tsd_reentrancy_levelp_get(tsd) >= 1);
   (*tsd_reentrancy_levelp_get(tsd))--;
   tsd_slow_update(tsd);
   tsd_data_init(tsd);
  } else {
   assert_tsd_data_cleanup_done(tsd);
  }
 } else if (tsd_state_get(tsd) == tsd_state_purgatory) {
  tsd_state_set(tsd, tsd_state_reincarnated);
  tsd_set(tsd);
  tsd_data_init_nocleanup(tsd);
 } else {
  assert(tsd_state_get(tsd) == tsd_state_reincarnated);
 }

 return tsd;
}
