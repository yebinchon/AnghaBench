
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;

__attribute__((used)) static int octeon_irq_cib_xlat(struct irq_domain *d,
       struct device_node *node,
       const u32 *intspec,
       unsigned int intsize,
       unsigned long *out_hwirq,
       unsigned int *out_type)
{
 unsigned int type = 0;

 if (intsize == 2)
  type = intspec[1];

 switch (type) {
 case 0:
 case 4:
  *out_type = IRQ_TYPE_LEVEL_HIGH;
  break;
 case 1:
  *out_type = IRQ_TYPE_EDGE_RISING;
  break;
 default:
  return -EINVAL;
 }

 *out_hwirq = intspec[0];

 return 0;
}
