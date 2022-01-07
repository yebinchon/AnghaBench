
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MTU_ICR ;
 scalar_t__ mtu_base ;
 int stub1 (struct clock_event_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t nmdk_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evdev = dev_id;

 writel(1 << 1, mtu_base + MTU_ICR);
 evdev->event_handler(evdev);
 return IRQ_HANDLED;
}
