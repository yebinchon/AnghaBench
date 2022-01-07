
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_private {int thread_id; int ppe_id; int ipi_mask; } ;
struct irq_data {int irq; } ;


 struct ps3_private* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lv1_end_of_interrupt_ext (int ,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ps3_chip_eoi(struct irq_data *d)
{
 const struct ps3_private *pd = irq_data_get_irq_chip_data(d);



 if (!test_bit(63 - d->irq, &pd->ipi_mask))
  lv1_end_of_interrupt_ext(pd->ppe_id, pd->thread_id, d->irq);
}
