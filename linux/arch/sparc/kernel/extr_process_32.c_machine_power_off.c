
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AUXIO_POWER_OFF ;
 scalar_t__ auxio_power_register ;
 int machine_halt () ;
 int of_console_device ;
 int of_node_is_type (int ,char*) ;
 int sbus_readb (scalar_t__) ;
 int sbus_writeb (int ,scalar_t__) ;
 scalar_t__ scons_pwroff ;

void machine_power_off(void)
{
 if (auxio_power_register &&
     (!of_node_is_type(of_console_device, "serial") || scons_pwroff)) {
  u8 power_register = sbus_readb(auxio_power_register);
  power_register |= AUXIO_POWER_OFF;
  sbus_writeb(power_register, auxio_power_register);
 }

 machine_halt();
}
