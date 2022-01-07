
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ESR_OFFSET (int) ;
 int REG (int ) ;
 int ar7_irq_base ;
 int writel (int,int ) ;

__attribute__((used)) static void ar7_unmask_irq(struct irq_data *d)
{
 writel(1 << ((d->irq - ar7_irq_base) % 32),
        REG(ESR_OFFSET(d->irq - ar7_irq_base)));
}
