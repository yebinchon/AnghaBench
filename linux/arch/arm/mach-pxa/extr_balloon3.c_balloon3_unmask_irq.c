
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int BALLOON3_INT_CONTROL_REG ;
 int BALLOON3_IRQ (int ) ;
 int __raw_writel (int,int ) ;
 int balloon3_irq_enabled ;

__attribute__((used)) static void balloon3_unmask_irq(struct irq_data *d)
{
 int balloon3_irq = (d->irq - BALLOON3_IRQ(0));
 balloon3_irq_enabled |= (1 << balloon3_irq);
 __raw_writel(~balloon3_irq_enabled, BALLOON3_INT_CONTROL_REG);
}
