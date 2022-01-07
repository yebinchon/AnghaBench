
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct em_sti_priv {TYPE_1__ ced; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t em_sti_interrupt(int irq, void *dev_id)
{
 struct em_sti_priv *p = dev_id;

 p->ced.event_handler(&p->ced);
 return IRQ_HANDLED;
}
