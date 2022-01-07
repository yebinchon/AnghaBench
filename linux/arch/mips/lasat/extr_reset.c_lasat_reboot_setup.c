
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _machine_halt ;
 int _machine_restart ;
 void* lasat_machine_halt ;
 int lasat_machine_restart ;
 void* pm_power_off ;

void lasat_reboot_setup(void)
{
 _machine_restart = lasat_machine_restart;
 _machine_halt = lasat_machine_halt;
 pm_power_off = lasat_machine_halt;
}
