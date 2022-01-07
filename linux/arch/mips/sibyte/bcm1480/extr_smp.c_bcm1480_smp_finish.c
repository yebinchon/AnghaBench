
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_enable () ;

__attribute__((used)) static void bcm1480_smp_finish(void)
{
 extern void sb1480_clockevent_init(void);

 sb1480_clockevent_init();
 local_irq_enable();
}
