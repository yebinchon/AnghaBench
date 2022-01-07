
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_REBOOT_CMD_RESTART ;
 int common_shutdown (int ,char*) ;

void
machine_restart(char *restart_cmd)
{
 common_shutdown(LINUX_REBOOT_CMD_RESTART, restart_cmd);
}
