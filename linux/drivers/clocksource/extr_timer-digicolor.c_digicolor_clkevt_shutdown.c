
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int dc_timer_disable (struct clock_event_device*) ;

__attribute__((used)) static int digicolor_clkevt_shutdown(struct clock_event_device *ce)
{
 dc_timer_disable(ce);
 return 0;
}
