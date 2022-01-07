
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int openrisc_timer_set_next (unsigned long) ;

__attribute__((used)) static int openrisc_timer_set_next_event(unsigned long delta,
      struct clock_event_device *dev)
{
 openrisc_timer_set_next(delta);
 return 0;
}
