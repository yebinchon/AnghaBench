
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ tsd_t ;


 int ATOMIC_ACQUIRE ;
 scalar_t__ tsd_atomic_exchange (int *,scalar_t__,int ) ;
 scalar_t__ tsd_state_compute (TYPE_1__*) ;
 scalar_t__ tsd_state_nominal_recompute ;

void
tsd_slow_update(tsd_t *tsd) {
 uint8_t old_state;
 do {
  uint8_t new_state = tsd_state_compute(tsd);
  old_state = tsd_atomic_exchange(&tsd->state, new_state,
      ATOMIC_ACQUIRE);
 } while (old_state == tsd_state_nominal_recompute);
}
