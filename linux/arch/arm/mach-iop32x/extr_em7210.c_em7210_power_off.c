
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EM7210_HARDWARE_POWER ;
 int gpio_direction_output (int ,int) ;
 int pr_crit (char*) ;

void em7210_power_off(void)
{
 int ret;

 ret = gpio_direction_output(EM7210_HARDWARE_POWER, 1);
 if (ret)
  pr_crit("could not drive power off GPIO high\n");
}
