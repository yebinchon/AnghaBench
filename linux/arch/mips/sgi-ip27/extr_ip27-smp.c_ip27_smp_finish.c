
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_enable () ;

__attribute__((used)) static void ip27_smp_finish(void)
{
 extern void hub_rt_clock_event_init(void);

 hub_rt_clock_event_init();
 local_irq_enable();
}
