
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;






 unsigned int IRQ_TYPE_NONE ;

__attribute__((used)) static int mpc8xx_pic_host_xlate(struct irq_domain *h, struct device_node *ct,
       const u32 *intspec, unsigned int intsize,
       irq_hw_number_t *out_hwirq, unsigned int *out_flags)
{
 static unsigned char map_pic_senses[4] = {
  130,
  128,
  129,
  131,
 };

 if (intspec[0] > 0x1f)
  return 0;

 *out_hwirq = intspec[0];
 if (intsize > 1 && intspec[1] < 4)
  *out_flags = map_pic_senses[intspec[1]];
 else
  *out_flags = IRQ_TYPE_NONE;

 return 0;
}
