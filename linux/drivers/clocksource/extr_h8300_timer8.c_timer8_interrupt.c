
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct timer8_priv {scalar_t__ mapbase; TYPE_1__ ced; } ;
typedef int irqreturn_t ;


 int CMFA ;
 int IRQ_HANDLED ;
 scalar_t__ _8TCR ;
 scalar_t__ _8TCSR ;
 int bclr (int ,scalar_t__) ;
 scalar_t__ clockevent_state_oneshot (TYPE_1__*) ;
 int iowrite16be (int,scalar_t__) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t timer8_interrupt(int irq, void *dev_id)
{
 struct timer8_priv *p = dev_id;

 if (clockevent_state_oneshot(&p->ced))
  iowrite16be(0x0000, p->mapbase + _8TCR);

 p->ced.event_handler(&p->ced);

 bclr(CMFA, p->mapbase + _8TCSR);

 return IRQ_HANDLED;
}
