
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;

__attribute__((used)) static int opal_event_set_type(struct irq_data *d, unsigned int flow_type)
{





 if (flow_type != IRQ_TYPE_LEVEL_HIGH)
  return -EINVAL;

 return 0;
}
