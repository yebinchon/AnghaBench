
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int LPD270_INT_MASK ;
 int LPD270_IRQ (int ) ;
 int __raw_writew (int,int ) ;
 int lpd270_irq_enabled ;

__attribute__((used)) static void lpd270_unmask_irq(struct irq_data *d)
{
 int lpd270_irq = d->irq - LPD270_IRQ(0);

 lpd270_irq_enabled |= 1 << lpd270_irq;
 __raw_writew(lpd270_irq_enabled, LPD270_INT_MASK);
}
