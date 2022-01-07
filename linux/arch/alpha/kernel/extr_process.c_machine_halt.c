
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_REBOOT_CMD_HALT ;
 int common_shutdown (int ,int *) ;

void
machine_halt(void)
{
 common_shutdown(LINUX_REBOOT_CMD_HALT, ((void*)0));
}
