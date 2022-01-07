
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {int state; } ;
typedef TYPE_1__ tsd_t ;


 int ATOMIC_RELAXED ;
 int assert (int) ;
 int tsd_add_nominal (TYPE_1__*) ;
 scalar_t__ tsd_atomic_load (int *,int ) ;
 int tsd_atomic_store (int *,scalar_t__,int ) ;
 int tsd_in_nominal_list (TYPE_1__*) ;
 int tsd_remove_nominal (TYPE_1__*) ;
 int tsd_slow_update (TYPE_1__*) ;
 scalar_t__ tsd_state_nominal_max ;
 scalar_t__ tsd_state_nominal_recompute ;

void
tsd_state_set(tsd_t *tsd, uint8_t new_state) {

 assert(new_state != tsd_state_nominal_recompute);
 uint8_t old_state = tsd_atomic_load(&tsd->state, ATOMIC_RELAXED);
 if (old_state > tsd_state_nominal_max) {




  assert(!tsd_in_nominal_list(tsd));
  tsd_atomic_store(&tsd->state, new_state, ATOMIC_RELAXED);
  if (new_state <= tsd_state_nominal_max) {
   tsd_add_nominal(tsd);
  }
 } else {





  assert(tsd_in_nominal_list(tsd));
  if (new_state > tsd_state_nominal_max) {
   tsd_remove_nominal(tsd);
   tsd_atomic_store(&tsd->state, new_state,
       ATOMIC_RELAXED);
  } else {






   tsd_slow_update(tsd);
  }
 }
}
