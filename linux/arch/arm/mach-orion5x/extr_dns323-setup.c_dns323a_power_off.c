
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS323_GPIO_POWER_OFF ;
 int gpio_set_value (int ,int) ;
 int pr_info (char*) ;

__attribute__((used)) static void dns323a_power_off(void)
{
 pr_info("DNS-323: Triggering power-off...\n");
 gpio_set_value(DNS323_GPIO_POWER_OFF, 1);
}
