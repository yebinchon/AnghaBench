
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_2__ {int cmeimask0; int imask0; } ;


 int SGINT_LOCAL0 ;
 int SGINT_LOCAL2 ;
 int SGI_MAP_0_IRQ ;
 TYPE_1__* sgint ;

__attribute__((used)) static void disable_local2_irq(struct irq_data *d)
{
 sgint->cmeimask0 &= ~(1 << (d->irq - SGINT_LOCAL2));
 if (!sgint->cmeimask0)
  sgint->imask0 &= ~(1 << (SGI_MAP_0_IRQ - SGINT_LOCAL0));
}
