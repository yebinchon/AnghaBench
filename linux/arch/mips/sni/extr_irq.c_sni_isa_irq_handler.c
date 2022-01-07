
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int generic_handle_irq (int) ;
 int i8259_irq () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t sni_isa_irq_handler(int dummy, void *p)
{
 int irq;

 irq = i8259_irq();
 if (unlikely(irq < 0))
  return IRQ_NONE;

 generic_handle_irq(irq);
 return IRQ_HANDLED;
}
