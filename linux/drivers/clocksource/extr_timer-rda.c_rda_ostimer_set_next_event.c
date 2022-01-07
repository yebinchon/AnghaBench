
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int rda_ostimer_start (int ,int,unsigned long) ;
 int timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int rda_ostimer_set_next_event(unsigned long evt,
          struct clock_event_device *ev)
{
 struct timer_of *to = to_timer_of(ev);

 rda_ostimer_start(timer_of_base(to), 0, evt);

 return 0;
}
