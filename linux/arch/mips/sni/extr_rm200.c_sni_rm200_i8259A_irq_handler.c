
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int do_IRQ (int) ;
 int sni_rm200_i8259_irq () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t sni_rm200_i8259A_irq_handler(int dummy, void *p)
{
 int irq;

 irq = sni_rm200_i8259_irq();
 if (unlikely(irq < 0))
  return IRQ_NONE;

 do_IRQ(irq);
 return IRQ_HANDLED;
}
