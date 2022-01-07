
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ realmode_power_off; } ;


 int APM_STATE_OFF ;
 int MRR_APM ;
 TYPE_1__ apm_info ;
 int cpumask_of (int ) ;
 int current ;
 int machine_real_restart (int ) ;
 int set_cpus_allowed_ptr (int ,int ) ;
 int set_system_power_state (int ) ;

__attribute__((used)) static void apm_power_off(void)
{

 if (apm_info.realmode_power_off) {
  set_cpus_allowed_ptr(current, cpumask_of(0));
  machine_real_restart(MRR_APM);
 } else {
  (void)set_system_power_state(APM_STATE_OFF);
 }
}
