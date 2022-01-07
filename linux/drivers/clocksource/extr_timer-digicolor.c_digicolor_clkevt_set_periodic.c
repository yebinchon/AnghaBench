
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digicolor_timer {int ticks_per_jiffy; } ;
struct clock_event_device {int dummy; } ;


 int CONTROL_MODE_PERIODIC ;
 struct digicolor_timer* dc_timer (struct clock_event_device*) ;
 int dc_timer_disable (struct clock_event_device*) ;
 int dc_timer_enable (struct clock_event_device*,int ) ;
 int dc_timer_set_count (struct clock_event_device*,int ) ;

__attribute__((used)) static int digicolor_clkevt_set_periodic(struct clock_event_device *ce)
{
 struct digicolor_timer *dt = dc_timer(ce);

 dc_timer_disable(ce);
 dc_timer_set_count(ce, dt->ticks_per_jiffy);
 dc_timer_enable(ce, CONTROL_MODE_PERIODIC);
 return 0;
}
