
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_pm_restart (int ,char*) ;
 int do_kernel_restart (char*) ;
 int local_irq_disable () ;
 int mdelay (int) ;
 int printk (char*) ;
 int reboot_mode ;
 int smp_send_stop () ;

void machine_restart(char *cmd)
{
 local_irq_disable();
 smp_send_stop();

 if (arm_pm_restart)
  arm_pm_restart(reboot_mode, cmd);
 else
  do_kernel_restart(cmd);


 mdelay(1000);


 printk("Reboot failed -- System halted\n");
 while (1);
}
