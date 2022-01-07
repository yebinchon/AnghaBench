
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int sa1111_irqbank(struct irq_data *d)
{
 return (irqd_to_hwirq(d) / 32) * 4;
}
