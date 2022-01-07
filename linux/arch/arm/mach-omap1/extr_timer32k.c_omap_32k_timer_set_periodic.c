
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int OMAP_32K_TIMER_TICK_PERIOD ;
 int omap_32k_timer_start (int ) ;
 int omap_32k_timer_stop () ;

__attribute__((used)) static int omap_32k_timer_set_periodic(struct clock_event_device *evt)
{
 omap_32k_timer_stop();
 omap_32k_timer_start(OMAP_32K_TIMER_TICK_PERIOD);
 return 0;
}
