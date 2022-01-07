
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REBOOT_SOFT ;
 int mioa701_machine_exit () ;
 int pxa_restart (int ,int *) ;

__attribute__((used)) static void mioa701_poweroff(void)
{
 mioa701_machine_exit();
 pxa_restart(REBOOT_SOFT, ((void*)0));
}
