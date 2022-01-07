
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_kernel_restart (char*) ;
 int local_irq_disable () ;

void machine_restart(char *cmd)
{
 local_irq_disable();
 do_kernel_restart(cmd);
 asm volatile ("bkpt");
}
