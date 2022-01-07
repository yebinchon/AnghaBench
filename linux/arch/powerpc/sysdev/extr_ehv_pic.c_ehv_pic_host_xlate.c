
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef size_t irq_hw_number_t ;






 size_t const IRQ_TYPE_MPIC_DIRECT ;
 unsigned int IRQ_TYPE_NONE ;
 size_t* hwirq_intspec ;

__attribute__((used)) static int ehv_pic_host_xlate(struct irq_domain *h, struct device_node *ct,
      const u32 *intspec, unsigned int intsize,
      irq_hw_number_t *out_hwirq, unsigned int *out_flags)

{







 static unsigned char map_of_senses_to_linux_irqtype[4] = {
  131,
  130,
  128,
  129,
 };

 *out_hwirq = intspec[0];
 if (intsize > 1) {
  hwirq_intspec[intspec[0]] = intspec[1];
  *out_flags = map_of_senses_to_linux_irqtype[intspec[1] &
       ~IRQ_TYPE_MPIC_DIRECT];
 } else {
  *out_flags = IRQ_TYPE_NONE;
 }

 return 0;
}
