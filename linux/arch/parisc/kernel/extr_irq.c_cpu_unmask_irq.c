
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int __cpu_unmask_irq (int ) ;

__attribute__((used)) static void cpu_unmask_irq(struct irq_data *d)
{
 __cpu_unmask_irq(d->irq);
}
