
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO9_CHARGE_EN ;
 int PDA_POWER_CHARGE_USB ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void mioa701_set_charge(int flags)
{
 gpio_set_value(GPIO9_CHARGE_EN, (flags == PDA_POWER_CHARGE_USB));
}
