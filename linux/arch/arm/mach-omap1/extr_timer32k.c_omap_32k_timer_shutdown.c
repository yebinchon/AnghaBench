
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int omap_32k_timer_stop () ;

__attribute__((used)) static int omap_32k_timer_shutdown(struct clock_event_device *evt)
{
 omap_32k_timer_stop();
 return 0;
}
