
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int OMAP_TIMER_CTRL_ST ;
 int OMAP_TIMER_POSTED ;
 int __omap_dm_timer_load_start (int *,int ,int,int ) ;
 int clkev ;

__attribute__((used)) static int omap2_gp_timer_set_next_event(unsigned long cycles,
      struct clock_event_device *evt)
{
 __omap_dm_timer_load_start(&clkev, OMAP_TIMER_CTRL_ST,
       0xffffffff - cycles, OMAP_TIMER_POSTED);

 return 0;
}
