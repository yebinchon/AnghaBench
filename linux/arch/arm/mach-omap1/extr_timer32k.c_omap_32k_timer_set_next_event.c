
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int omap_32k_timer_start (unsigned long) ;

__attribute__((used)) static int omap_32k_timer_set_next_event(unsigned long delta,
      struct clock_event_device *dev)
{
 omap_32k_timer_start(delta);

 return 0;
}
