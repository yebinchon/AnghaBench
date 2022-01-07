
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ base; } ;


 int BM_IR_MR0 ;
 scalar_t__ HW_IR ;
 int IRQ_HANDLED ;
 TYPE_1__ priv ;
 int stub1 (struct clock_event_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t asm9260_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = dev_id;

 evt->event_handler(evt);

 writel_relaxed(BM_IR_MR0, priv.base + HW_IR);

 return IRQ_HANDLED;
}
