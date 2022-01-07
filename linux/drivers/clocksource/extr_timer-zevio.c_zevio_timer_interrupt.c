
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct zevio_timer {TYPE_1__ clkevt; scalar_t__ timer1; scalar_t__ interrupt_regs; } ;
typedef int irqreturn_t ;


 int CNTL_STOP_TIMER ;
 scalar_t__ IO_CONTROL ;
 scalar_t__ IO_INTR_ACK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TIMER_INTR_MSK ;
 int readl (scalar_t__) ;
 int stub1 (TYPE_1__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t zevio_timer_interrupt(int irq, void *dev_id)
{
 struct zevio_timer *timer = dev_id;
 u32 intr;

 intr = readl(timer->interrupt_regs + IO_INTR_ACK);
 if (!(intr & TIMER_INTR_MSK))
  return IRQ_NONE;

 writel(TIMER_INTR_MSK, timer->interrupt_regs + IO_INTR_ACK);
 writel(CNTL_STOP_TIMER, timer->timer1 + IO_CONTROL);

 if (timer->clkevt.event_handler)
  timer->clkevt.event_handler(&timer->clkevt);

 return IRQ_HANDLED;
}
