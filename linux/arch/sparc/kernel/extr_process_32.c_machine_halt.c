
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mdelay (int) ;
 int panic (char*) ;
 int prom_halt () ;

void machine_halt(void)
{
 local_irq_enable();
 mdelay(8);
 local_irq_disable();
 prom_halt();
 panic("Halt failed!");
}
