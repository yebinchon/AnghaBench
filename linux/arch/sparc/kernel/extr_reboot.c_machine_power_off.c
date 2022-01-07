
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_console_device ;
 int of_node_is_type (int ,char*) ;
 int prom_halt () ;
 int prom_halt_power_off () ;
 scalar_t__ scons_pwroff ;

void machine_power_off(void)
{
 if (!of_node_is_type(of_console_device, "serial") || scons_pwroff)
  prom_halt_power_off();

 prom_halt();
}
