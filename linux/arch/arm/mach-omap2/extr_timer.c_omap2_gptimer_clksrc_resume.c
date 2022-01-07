
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int OMAP_TIMER_CTRL_AR ;
 int OMAP_TIMER_CTRL_ST ;
 int OMAP_TIMER_NONPOSTED ;
 int __omap_dm_timer_load_start (int *,int,int ,int ) ;
 int clksrc ;
 int clocksource_gpt_hwmod ;
 int omap2_gptimer_clksrc_load ;
 int omap_hwmod_enable (int ) ;

__attribute__((used)) static void omap2_gptimer_clksrc_resume(struct clocksource *unused)
{
 omap_hwmod_enable(clocksource_gpt_hwmod);

 __omap_dm_timer_load_start(&clksrc,
       OMAP_TIMER_CTRL_ST | OMAP_TIMER_CTRL_AR,
       omap2_gptimer_clksrc_load,
       OMAP_TIMER_NONPOSTED);
}
