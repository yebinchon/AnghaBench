
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ has_tint_cstat; } ;
struct TYPE_4__ {int event_id; scalar_t__ base; TYPE_1__ variant; } ;


 int IRQ_HANDLED ;
 scalar_t__ REG_TINT_CSTAT ;
 TYPE_2__ pwm ;
 int stub1 (struct clock_event_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t samsung_clock_event_isr(int irq, void *dev_id)
{
 struct clock_event_device *evt = dev_id;

 if (pwm.variant.has_tint_cstat) {
  u32 mask = (1 << pwm.event_id);
  writel(mask | (mask << 5), pwm.base + REG_TINT_CSTAT);
 }

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
