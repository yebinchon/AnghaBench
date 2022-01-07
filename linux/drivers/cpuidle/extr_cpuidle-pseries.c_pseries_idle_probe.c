
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lppaca_ptr; } ;
struct TYPE_6__ {int target_residency; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 int FW_FEATURE_SPLPAR ;
 scalar_t__ IDLE_NO_OVERRIDE ;
 scalar_t__ cpuidle_disable ;
 TYPE_1__* cpuidle_state_table ;
 TYPE_1__* dedicated_states ;
 scalar_t__ firmware_has_feature (int ) ;
 TYPE_2__* local_paca ;
 scalar_t__ lppaca_shared_proc (int ) ;
 int max_idle_state ;
 TYPE_1__* shared_states ;
 int snooze_timeout ;
 int snooze_timeout_en ;
 int tb_ticks_per_usec ;

__attribute__((used)) static int pseries_idle_probe(void)
{

 if (cpuidle_disable != IDLE_NO_OVERRIDE)
  return -ENODEV;

 if (firmware_has_feature(FW_FEATURE_SPLPAR)) {






  if (lppaca_shared_proc(local_paca->lppaca_ptr)) {
   cpuidle_state_table = shared_states;
   max_idle_state = ARRAY_SIZE(shared_states);
  } else {
   cpuidle_state_table = dedicated_states;
   max_idle_state = ARRAY_SIZE(dedicated_states);
  }
 } else
  return -ENODEV;

 if (max_idle_state > 1) {
  snooze_timeout_en = 1;
  snooze_timeout = cpuidle_state_table[1].target_residency *
     tb_ticks_per_usec;
 }
 return 0;
}
