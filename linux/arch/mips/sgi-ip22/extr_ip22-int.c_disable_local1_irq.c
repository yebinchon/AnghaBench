
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_2__ {int imask1; } ;


 int SGINT_LOCAL1 ;
 TYPE_1__* sgint ;

__attribute__((used)) static void disable_local1_irq(struct irq_data *d)
{
 sgint->imask1 &= ~(1 << (d->irq - SGINT_LOCAL1));
}
