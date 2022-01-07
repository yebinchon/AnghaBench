
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int HZ ;
 int arc_timer_event_setup (int) ;
 int arc_timer_freq ;

__attribute__((used)) static int arc_clkevent_set_periodic(struct clock_event_device *dev)
{




 arc_timer_event_setup(arc_timer_freq / HZ);
 return 0;
}
