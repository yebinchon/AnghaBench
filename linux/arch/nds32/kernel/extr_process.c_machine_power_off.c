
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pm_power_off () ;

void machine_power_off(void)
{
 if (pm_power_off)
  pm_power_off();
}
