
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_2__ {int cmeimask1; int imask1; } ;


 int SGINT_LOCAL1 ;
 int SGINT_LOCAL3 ;
 int SGI_MAP_1_IRQ ;
 TYPE_1__* sgint ;

__attribute__((used)) static void disable_local3_irq(struct irq_data *d)
{
 sgint->cmeimask1 &= ~(1 << (d->irq - SGINT_LOCAL3));
 if (!sgint->cmeimask1)
  sgint->imask1 &= ~(1 << (SGI_MAP_1_IRQ - SGINT_LOCAL1));
}
