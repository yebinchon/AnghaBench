
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int lapic_timer_set_periodic_oneshot (struct clock_event_device*,int) ;

__attribute__((used)) static int lapic_timer_set_periodic(struct clock_event_device *evt)
{
 return lapic_timer_set_periodic_oneshot(evt, 0);
}
