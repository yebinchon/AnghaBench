
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sun4v_mach_exit (int ) ;

void ldom_power_off(void)
{
 sun4v_mach_exit(0);
}
