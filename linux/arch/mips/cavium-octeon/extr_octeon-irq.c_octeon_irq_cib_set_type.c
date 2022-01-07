
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int IRQ_SET_MASK_OK ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;

__attribute__((used)) static int octeon_irq_cib_set_type(struct irq_data *data, unsigned int t)
{
 irqd_set_trigger_type(data, t);
 return IRQ_SET_MASK_OK;
}
