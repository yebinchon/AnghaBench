
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int INTC_REG_ENABLE ;
 int rt_intc_w32 (int ,int ) ;

__attribute__((used)) static void ralink_intc_irq_unmask(struct irq_data *d)
{
 rt_intc_w32(BIT(d->hwirq), INTC_REG_ENABLE);
}
