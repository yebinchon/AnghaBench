
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int MLB_TIMER_ONESHOT ;
 int mlb_evt_timer_start (struct timer_of*,int ) ;
 int mlb_evt_timer_stop (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int mlb_set_state_oneshot(struct clock_event_device *clk)
{
 struct timer_of *to = to_timer_of(clk);

 mlb_evt_timer_stop(to);
 mlb_evt_timer_start(to, MLB_TIMER_ONESHOT);
 return 0;
}
