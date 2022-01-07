
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int i8259a_enable_irq (struct irq_data*) ;

__attribute__((used)) static void
jensen_local_enable(struct irq_data *d)
{

 if (d->irq == 7)
  i8259a_enable_irq(d);
}
