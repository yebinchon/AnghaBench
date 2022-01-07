
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int clockevent_gpt_hwmod ;
 int omap_hwmod_idle (int ) ;

__attribute__((used)) static void omap_clkevt_idle(struct clock_event_device *unused)
{
 if (!clockevent_gpt_hwmod)
  return;

 omap_hwmod_idle(clockevent_gpt_hwmod);
}
