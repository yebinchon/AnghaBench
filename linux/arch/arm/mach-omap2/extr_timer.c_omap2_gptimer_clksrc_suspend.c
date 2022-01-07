
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int OMAP_TIMER_NONPOSTED ;
 int __omap_dm_timer_read_counter (int *,int ) ;
 int clksrc ;
 int clocksource_gpt_hwmod ;
 int omap2_gptimer_clksrc_load ;
 int omap_hwmod_idle (int ) ;

__attribute__((used)) static void omap2_gptimer_clksrc_suspend(struct clocksource *unused)
{
 omap2_gptimer_clksrc_load =
  __omap_dm_timer_read_counter(&clksrc, OMAP_TIMER_NONPOSTED);

 omap_hwmod_idle(clocksource_gpt_hwmod);
}
