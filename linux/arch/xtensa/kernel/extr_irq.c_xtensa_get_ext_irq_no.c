
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_EDGE ;
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_LEVEL ;
 int hweight32 (unsigned int) ;

unsigned xtensa_get_ext_irq_no(unsigned irq)
{
 unsigned mask = (XCHAL_INTTYPE_MASK_EXTERN_EDGE |
  XCHAL_INTTYPE_MASK_EXTERN_LEVEL) &
  ((1u << irq) - 1);
 return hweight32(mask);
}
