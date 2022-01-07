
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REBOOT_HARD ;
 int orion5x_restart (int ,int *) ;

__attribute__((used)) static void ls_hgl_power_off(void)
{
 orion5x_restart(REBOOT_HARD, ((void*)0));
}
