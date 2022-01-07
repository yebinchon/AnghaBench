
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;

__attribute__((used)) static int intc2_irq_gpio_set_type(struct irq_data *d, unsigned int f)
{
 if (f & ~IRQ_TYPE_EDGE_BOTH)
  return -EINVAL;
 return 0;
}
