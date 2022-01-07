
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REBOOT_GPIO ;
 int pxa_restart (int ,int *) ;

__attribute__((used)) static void spitz_poweroff(void)
{
 pxa_restart(REBOOT_GPIO, ((void*)0));
}
