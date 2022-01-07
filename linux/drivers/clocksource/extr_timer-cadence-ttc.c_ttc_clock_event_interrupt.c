
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct ttc_timer {scalar_t__ base_addr; } ;
struct ttc_timer_clockevent {TYPE_1__ ce; struct ttc_timer ttc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TTC_ISR_OFFSET ;
 int readl_relaxed (scalar_t__) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t ttc_clock_event_interrupt(int irq, void *dev_id)
{
 struct ttc_timer_clockevent *ttce = dev_id;
 struct ttc_timer *timer = &ttce->ttc;


 readl_relaxed(timer->base_addr + TTC_ISR_OFFSET);

 ttce->ce.event_handler(&ttce->ce);

 return IRQ_HANDLED;
}
