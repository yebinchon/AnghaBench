
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER_ENABLE ;
 int TIMER_ENABLE_EN ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ event_base ;
 int readl_relaxed (scalar_t__) ;
 int stub1 (struct clock_event_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t msm_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = dev_id;

 if (clockevent_state_oneshot(evt)) {
  u32 ctrl = readl_relaxed(event_base + TIMER_ENABLE);
  ctrl &= ~TIMER_ENABLE_EN;
  writel_relaxed(ctrl, event_base + TIMER_ENABLE);
 }
 evt->event_handler(evt);
 return IRQ_HANDLED;
}
