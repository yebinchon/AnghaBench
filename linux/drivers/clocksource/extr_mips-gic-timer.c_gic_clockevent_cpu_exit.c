
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int disable_percpu_irq (int ) ;
 int gic_timer_irq ;

__attribute__((used)) static void gic_clockevent_cpu_exit(struct clock_event_device *cd)
{
 disable_percpu_irq(gic_timer_irq);
}
