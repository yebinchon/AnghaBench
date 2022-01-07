
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NET2BIG_GPIO_POWER_OFF ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void net2big_power_off(void)
{
 gpio_set_value(NET2BIG_GPIO_POWER_OFF, 1);
}
