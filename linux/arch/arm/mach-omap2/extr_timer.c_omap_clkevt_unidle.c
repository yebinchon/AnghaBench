
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int OMAP_TIMER_INT_OVERFLOW ;
 int __omap_dm_timer_int_enable (int *,int ) ;
 int clkev ;
 int clockevent_gpt_hwmod ;
 int omap_hwmod_enable (int ) ;

__attribute__((used)) static void omap_clkevt_unidle(struct clock_event_device *unused)
{
 if (!clockevent_gpt_hwmod)
  return;

 omap_hwmod_enable(clockevent_gpt_hwmod);
 __omap_dm_timer_int_enable(&clkev, OMAP_TIMER_INT_OVERFLOW);
}
