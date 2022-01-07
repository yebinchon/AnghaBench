
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int MSP_PER_INTBASE ;
 int* PER_INT_STS_REG ;
 int mask_per_irq (struct irq_data*) ;

__attribute__((used)) static inline void msp_per_irq_ack(struct irq_data *d)
{
 mask_per_irq(d);





 *PER_INT_STS_REG = (1 << (d->irq - MSP_PER_INTBASE));
}
