
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned int MSP_PER_INTBASE ;
 unsigned int MSP_SLP_INTBASE ;
 int* PER_INT_MSK_REG ;
 int* SLP_INT_MSK_REG ;

__attribute__((used)) static inline void mask_msp_slp_irq(struct irq_data *d)
{
 unsigned int irq = d->irq;


 if (irq < MSP_PER_INTBASE)
  *SLP_INT_MSK_REG &= ~(1 << (irq - MSP_SLP_INTBASE));
 else
  *PER_INT_MSK_REG &= ~(1 << (irq - MSP_PER_INTBASE));
}
