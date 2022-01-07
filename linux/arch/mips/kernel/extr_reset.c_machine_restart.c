
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_restart (char*) ;
 int do_kernel_restart (char*) ;
 int machine_hang () ;
 int mdelay (int) ;
 int pr_emerg (char*) ;
 int preempt_disable () ;
 int smp_send_stop () ;

void machine_restart(char *command)
{
 if (_machine_restart)
  _machine_restart(command);





 do_kernel_restart(command);
 mdelay(1000);
 pr_emerg("Reboot failed -- System halted\n");
 machine_hang();
}
