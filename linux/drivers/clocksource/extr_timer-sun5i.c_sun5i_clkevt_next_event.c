
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun5i_timer_clkevt {int dummy; } ;
struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_SYNC_TICKS ;
 int sun5i_clkevt_time_setup (struct sun5i_timer_clkevt*,int ,scalar_t__) ;
 int sun5i_clkevt_time_start (struct sun5i_timer_clkevt*,int ,int) ;
 int sun5i_clkevt_time_stop (struct sun5i_timer_clkevt*,int ) ;
 struct sun5i_timer_clkevt* to_sun5i_timer_clkevt (struct clock_event_device*) ;

__attribute__((used)) static int sun5i_clkevt_next_event(unsigned long evt,
       struct clock_event_device *clkevt)
{
 struct sun5i_timer_clkevt *ce = to_sun5i_timer_clkevt(clkevt);

 sun5i_clkevt_time_stop(ce, 0);
 sun5i_clkevt_time_setup(ce, 0, evt - TIMER_SYNC_TICKS);
 sun5i_clkevt_time_start(ce, 0, 0);

 return 0;
}
