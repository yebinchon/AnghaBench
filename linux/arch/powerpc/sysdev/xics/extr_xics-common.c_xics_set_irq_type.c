
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 int IRQ_SET_MASK_OK_NOCOPY ;
 unsigned int IRQ_TYPE_DEFAULT ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_NONE ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;

int xics_set_irq_type(struct irq_data *d, unsigned int flow_type)
{







 if (flow_type == IRQ_TYPE_DEFAULT || flow_type == IRQ_TYPE_NONE)
  flow_type = IRQ_TYPE_EDGE_RISING;

 if (flow_type != IRQ_TYPE_EDGE_RISING &&
     flow_type != IRQ_TYPE_LEVEL_LOW)
  return -EINVAL;

 irqd_set_trigger_type(d, flow_type);

 return IRQ_SET_MASK_OK_NOCOPY;
}
