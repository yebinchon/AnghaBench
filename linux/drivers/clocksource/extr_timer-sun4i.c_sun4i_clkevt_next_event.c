
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_SYNC_TICKS ;
 int sun4i_clkevt_time_setup (int ,int ,scalar_t__) ;
 int sun4i_clkevt_time_start (int ,int ,int) ;
 int sun4i_clkevt_time_stop (int ,int ) ;
 int timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int sun4i_clkevt_next_event(unsigned long evt,
       struct clock_event_device *clkevt)
{
 struct timer_of *to = to_timer_of(clkevt);

 sun4i_clkevt_time_stop(timer_of_base(to), 0);
 sun4i_clkevt_time_setup(timer_of_base(to), 0, evt - TIMER_SYNC_TICKS);
 sun4i_clkevt_time_start(timer_of_base(to), 0, 0);

 return 0;
}
