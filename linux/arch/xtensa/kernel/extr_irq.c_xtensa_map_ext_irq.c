
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_EDGE ;
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_LEVEL ;
 int XCHAL_NUM_INTERRUPTS ;

unsigned xtensa_map_ext_irq(unsigned ext_irq)
{
 unsigned mask = XCHAL_INTTYPE_MASK_EXTERN_EDGE |
  XCHAL_INTTYPE_MASK_EXTERN_LEVEL;
 unsigned i;

 for (i = 0; mask; ++i, mask >>= 1) {
  if ((mask & 1) && ext_irq-- == 0)
   return i;
 }
 return XCHAL_NUM_INTERRUPTS;
}
