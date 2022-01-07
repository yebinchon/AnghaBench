
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 int mxs_irq_clear (char*) ;
 int timrot_irq_enable () ;

__attribute__((used)) static int mxs_set_oneshot(struct clock_event_device *evt)
{
 if (clockevent_state_oneshot(evt))
  mxs_irq_clear("oneshot");
 timrot_irq_enable();
 return 0;
}
