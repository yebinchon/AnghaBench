
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 scalar_t__ A20R_PT_TIM0_ACK ;
 int IRQ_HANDLED ;
 int stub1 (struct clock_event_device*) ;
 int wmb () ;

__attribute__((used)) static irqreturn_t a20r_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *cd = dev_id;

 *(volatile u8 *)A20R_PT_TIM0_ACK = 0;
 wmb();

 cd->event_handler(cd);

 return IRQ_HANDLED;
}
