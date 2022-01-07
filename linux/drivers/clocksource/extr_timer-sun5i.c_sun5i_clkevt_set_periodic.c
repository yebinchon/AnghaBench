
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ticks_per_jiffy; } ;
struct sun5i_timer_clkevt {TYPE_1__ timer; } ;
struct clock_event_device {int dummy; } ;


 int sun5i_clkevt_time_setup (struct sun5i_timer_clkevt*,int ,int ) ;
 int sun5i_clkevt_time_start (struct sun5i_timer_clkevt*,int ,int) ;
 int sun5i_clkevt_time_stop (struct sun5i_timer_clkevt*,int ) ;
 struct sun5i_timer_clkevt* to_sun5i_timer_clkevt (struct clock_event_device*) ;

__attribute__((used)) static int sun5i_clkevt_set_periodic(struct clock_event_device *clkevt)
{
 struct sun5i_timer_clkevt *ce = to_sun5i_timer_clkevt(clkevt);

 sun5i_clkevt_time_stop(ce, 0);
 sun5i_clkevt_time_setup(ce, 0, ce->timer.ticks_per_jiffy);
 sun5i_clkevt_time_start(ce, 0, 1);
 return 0;
}
