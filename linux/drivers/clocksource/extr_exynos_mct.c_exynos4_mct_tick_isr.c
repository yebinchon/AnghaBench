
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
struct mct_clock_event_device {struct clock_event_device evt; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int clockevent_state_periodic (struct clock_event_device*) ;
 int exynos4_mct_tick_clear (struct mct_clock_event_device*) ;
 int exynos4_mct_tick_stop (struct mct_clock_event_device*) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t exynos4_mct_tick_isr(int irq, void *dev_id)
{
 struct mct_clock_event_device *mevt = dev_id;
 struct clock_event_device *evt = &mevt->evt;






 if (!clockevent_state_periodic(&mevt->evt))
  exynos4_mct_tick_stop(mevt);

 exynos4_mct_tick_clear(mevt);

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
