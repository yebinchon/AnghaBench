
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_2__ {int imask0; } ;


 int SGINT_LOCAL0 ;
 TYPE_1__* sgint ;

__attribute__((used)) static void disable_local0_irq(struct irq_data *d)
{
 sgint->imask0 &= ~(1 << (d->irq - SGINT_LOCAL0));
}
