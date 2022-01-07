
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ NPCM7XX_REG_TISR ;
 int NPCM7XX_T0_CLR_INT ;
 int stub1 (struct clock_event_device*) ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t npcm7xx_timer0_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = (struct clock_event_device *)dev_id;
 struct timer_of *to = to_timer_of(evt);

 writel(NPCM7XX_T0_CLR_INT, timer_of_base(to) + NPCM7XX_REG_TISR);

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
