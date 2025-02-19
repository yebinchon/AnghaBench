
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 unsigned int IRQ_TYPE_NONE ;
 scalar_t__ WARN_ON (int) ;
 unsigned long XCHAL_NUM_INTERRUPTS ;
 unsigned long xtensa_map_ext_irq (unsigned long) ;

int xtensa_irq_domain_xlate(const u32 *intspec, unsigned int intsize,
  unsigned long int_irq, unsigned long ext_irq,
  unsigned long *out_hwirq, unsigned int *out_type)
{
 if (WARN_ON(intsize < 1 || intsize > 2))
  return -EINVAL;
 if (intsize == 2 && intspec[1] == 1) {
  int_irq = xtensa_map_ext_irq(ext_irq);
  if (int_irq < XCHAL_NUM_INTERRUPTS)
   *out_hwirq = int_irq;
  else
   return -EINVAL;
 } else {
  *out_hwirq = int_irq;
 }
 *out_type = IRQ_TYPE_NONE;
 return 0;
}
