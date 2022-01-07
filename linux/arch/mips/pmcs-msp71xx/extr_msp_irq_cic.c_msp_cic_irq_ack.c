
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int* CIC_STS_REG ;
 int MSP_CIC_INTBASE ;
 int mask_cic_irq (struct irq_data*) ;

__attribute__((used)) static void msp_cic_irq_ack(struct irq_data *d)
{
 mask_cic_irq(d);





 *CIC_STS_REG = (1 << (d->irq - MSP_CIC_INTBASE));
}
