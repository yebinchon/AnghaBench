
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int CONTROL_MODE_ONESHOT ;
 int dc_timer_disable (struct clock_event_device*) ;
 int dc_timer_enable (struct clock_event_device*,int ) ;
 int dc_timer_set_count (struct clock_event_device*,unsigned long) ;

__attribute__((used)) static int digicolor_clkevt_next_event(unsigned long evt,
           struct clock_event_device *ce)
{
 dc_timer_disable(ce);
 dc_timer_set_count(ce, evt);
 dc_timer_enable(ce, CONTROL_MODE_ONESHOT);

 return 0;
}
