
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; } ;
struct timer_of {TYPE_1__ of_clk; } ;
struct clock_event_device {int dummy; } ;


 int MLB_TIMER_PERIODIC ;
 int mlb_evt_timer_register_count (struct timer_of*,int ) ;
 int mlb_evt_timer_start (struct timer_of*,int ) ;
 int mlb_evt_timer_stop (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int mlb_set_state_periodic(struct clock_event_device *clk)
{
 struct timer_of *to = to_timer_of(clk);

 mlb_evt_timer_stop(to);
 mlb_evt_timer_register_count(to, to->of_clk.period);
 mlb_evt_timer_start(to, MLB_TIMER_PERIODIC);
 return 0;
}
