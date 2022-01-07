
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static inline unsigned long mpc8xx_irqd_to_bit(struct irq_data *d)
{
 return 0x80000000 >> irqd_to_hwirq(d);
}
