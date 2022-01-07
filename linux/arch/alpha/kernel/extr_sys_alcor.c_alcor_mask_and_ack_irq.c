
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vuip ;
struct irq_data {int irq; } ;


 scalar_t__ GRU_INT_CLEAR ;
 int alcor_disable_irq (struct irq_data*) ;
 int mb () ;

__attribute__((used)) static void
alcor_mask_and_ack_irq(struct irq_data *d)
{
 alcor_disable_irq(d);


 *(vuip)GRU_INT_CLEAR = 1 << (d->irq - 16); mb();
 *(vuip)GRU_INT_CLEAR = 0; mb();
}
