
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int rda_ostimer_stop (int ) ;
 int timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int rda_ostimer_set_state_shutdown(struct clock_event_device *evt)
{
 struct timer_of *to = to_timer_of(evt);

 rda_ostimer_stop(timer_of_base(to));

 return 0;
}
