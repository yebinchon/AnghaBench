
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ U300_TIMER_APP_DGPT1 ;
 int U300_TIMER_APP_DGPT1_TIMER_DISABLE ;
 scalar_t__ U300_TIMER_APP_EGPT1 ;
 int U300_TIMER_APP_EGPT1_TIMER_ENABLE ;
 scalar_t__ U300_TIMER_APP_GPT1IE ;
 int U300_TIMER_APP_GPT1IE_IRQ_DISABLE ;
 int U300_TIMER_APP_GPT1IE_IRQ_ENABLE ;
 scalar_t__ U300_TIMER_APP_GPT1TC ;
 scalar_t__ U300_TIMER_APP_SGPT1M ;
 int U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT ;
 scalar_t__ u300_timer_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int u300_set_oneshot(struct clock_event_device *evt)
{







 writel(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
        u300_timer_base + U300_TIMER_APP_GPT1IE);

 writel(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
        u300_timer_base + U300_TIMER_APP_DGPT1);




 writel(0xFFFFFFFF, u300_timer_base + U300_TIMER_APP_GPT1TC);

 writel(U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT,
        u300_timer_base + U300_TIMER_APP_SGPT1M);

 writel(U300_TIMER_APP_GPT1IE_IRQ_ENABLE,
        u300_timer_base + U300_TIMER_APP_GPT1IE);

 writel(U300_TIMER_APP_EGPT1_TIMER_ENABLE,
        u300_timer_base + U300_TIMER_APP_EGPT1);
 return 0;
}
