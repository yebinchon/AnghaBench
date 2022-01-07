
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_notice (char*) ;

void machine_power_off(void)
{
 pr_notice("Machine power off...\n");
 while (1)
  ;
}
