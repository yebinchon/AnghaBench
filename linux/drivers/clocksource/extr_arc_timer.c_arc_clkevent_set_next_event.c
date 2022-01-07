
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int arc_timer_event_setup (unsigned long) ;

__attribute__((used)) static int arc_clkevent_set_next_event(unsigned long delta,
           struct clock_event_device *dev)
{
 arc_timer_event_setup(delta);
 return 0;
}
