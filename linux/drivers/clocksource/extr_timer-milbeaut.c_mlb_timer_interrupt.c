
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_of {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MLB_TMR_EVT_TMCSR_OFS ;
 int MLB_TMR_TMCSR_UF ;
 int readl_relaxed (scalar_t__) ;
 int stub1 (struct clock_event_device*) ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t mlb_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *clk = dev_id;
 struct timer_of *to = to_timer_of(clk);
 u32 val;

 val = readl_relaxed(timer_of_base(to) + MLB_TMR_EVT_TMCSR_OFS);
 val &= ~MLB_TMR_TMCSR_UF;
 writel_relaxed(val, timer_of_base(to) + MLB_TMR_EVT_TMCSR_OFS);

 clk->event_handler(clk);

 return IRQ_HANDLED;
}
