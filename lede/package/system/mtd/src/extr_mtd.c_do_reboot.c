
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_REBOOT_CMD_RESTART ;
 int LINUX_REBOOT_MAGIC1 ;
 int LINUX_REBOOT_MAGIC2 ;
 int SYS_reboot ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int sleep (int) ;
 int stderr ;
 int syscall (int ,int ,int ,int ,int *) ;
 int system (char*) ;

__attribute__((used)) static void do_reboot(void)
{
 fprintf(stderr, "Rebooting ...\n");
 fflush(stderr);


 system("/sbin/reboot");
 sleep(2);


 syscall(SYS_reboot,LINUX_REBOOT_MAGIC1,LINUX_REBOOT_MAGIC2,LINUX_REBOOT_CMD_RESTART,((void*)0));
}
