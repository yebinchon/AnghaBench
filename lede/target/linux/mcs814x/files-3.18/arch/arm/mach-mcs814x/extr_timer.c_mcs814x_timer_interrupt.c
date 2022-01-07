
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER_VAL ;
 scalar_t__ last_reload ;
 scalar_t__ mcs814x_timer_base ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 scalar_t__ timer_correct ;
 scalar_t__ timer_reload_value ;
 int timer_tick () ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static irqreturn_t mcs814x_timer_interrupt(int irq, void *dev_id)
{
 u32 count = readl_relaxed(mcs814x_timer_base + TIMER_VAL);


 last_reload = count + timer_correct + timer_reload_value;

 if (last_reload < timer_reload_value) {
  last_reload = timer_reload_value;
 } else {
  if (timer_correct == 0)
   timer_correct = readl_relaxed(mcs814x_timer_base + TIMER_VAL) - count;
 }
 writel_relaxed(last_reload, mcs814x_timer_base + TIMER_VAL);

 timer_tick();

 return IRQ_HANDLED;
}
