
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int start; } ;


 int GPTU_IRNCR ;
 int IRQ_HANDLED ;
 int gptu_w32 (int,int ) ;
 TYPE_1__* irqres ;

__attribute__((used)) static irqreturn_t timer_irq_handler(int irq, void *priv)
{
 int timer = irq - irqres[0].start;
 gptu_w32(1 << timer, GPTU_IRNCR);
 return IRQ_HANDLED;
}
