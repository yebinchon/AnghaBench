
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS323_GPIO_POWER_OFF ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int pr_info (char*) ;

__attribute__((used)) static void dns323b_power_off(void)
{
 pr_info("DNS-323: Triggering power-off...\n");

 gpio_set_value(DNS323_GPIO_POWER_OFF, 1);
 mdelay(100);
 gpio_set_value(DNS323_GPIO_POWER_OFF, 0);
}
