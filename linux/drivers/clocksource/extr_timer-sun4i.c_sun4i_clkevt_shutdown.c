
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int sun4i_clkevt_time_stop (int ,int ) ;
 int timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int sun4i_clkevt_shutdown(struct clock_event_device *evt)
{
 struct timer_of *to = to_timer_of(evt);

 sun4i_clkevt_time_stop(timer_of_base(to), 0);

 return 0;
}
