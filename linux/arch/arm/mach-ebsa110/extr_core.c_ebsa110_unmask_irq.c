
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int IRQ_MSET ;
 int __raw_writeb (int,int ) ;

__attribute__((used)) static void ebsa110_unmask_irq(struct irq_data *d)
{
 __raw_writeb(1 << d->irq, IRQ_MSET);
}
