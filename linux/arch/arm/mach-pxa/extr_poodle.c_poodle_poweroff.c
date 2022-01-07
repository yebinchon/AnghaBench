
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REBOOT_HARD ;
 int pxa_restart (int ,int *) ;

__attribute__((used)) static void poodle_poweroff(void)
{
 pxa_restart(REBOOT_HARD, ((void*)0));
}
