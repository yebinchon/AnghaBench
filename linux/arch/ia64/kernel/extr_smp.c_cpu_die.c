
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int cpu_halt () ;
 int local_irq_disable () ;
 int max_xtp () ;

void
cpu_die(void)
{
 max_xtp();
 local_irq_disable();
 cpu_halt();

 BUG();
 for (;;);
}
