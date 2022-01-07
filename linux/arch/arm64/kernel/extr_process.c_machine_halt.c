
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int smp_send_stop () ;

void machine_halt(void)
{
 local_irq_disable();
 smp_send_stop();
 while (1);
}
