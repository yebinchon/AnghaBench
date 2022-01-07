
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIE_MACHINE_RESTART ;
 int REBOOT_WARM ;
 int efi_reboot (int ,int *) ;
 int notify_die (int ,char*,int *,int ,int ,int ) ;

void
machine_restart (char *restart_cmd)
{
 (void) notify_die(DIE_MACHINE_RESTART, restart_cmd, ((void*)0), 0, 0, 0);
 efi_reboot(REBOOT_WARM, ((void*)0));
}
