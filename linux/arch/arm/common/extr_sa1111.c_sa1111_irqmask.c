
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;


 int BIT (int) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static u32 sa1111_irqmask(struct irq_data *d)
{
 return BIT(irqd_to_hwirq(d) & 31);
}
