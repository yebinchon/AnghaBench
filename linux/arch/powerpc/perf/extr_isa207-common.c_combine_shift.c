
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_300 ;
 unsigned long MMCR1_COMBINE_SHIFT (unsigned long) ;
 scalar_t__ cpu_has_feature (int ) ;
 unsigned long p9_MMCR1_COMBINE_SHIFT (unsigned long) ;

__attribute__((used)) static unsigned long combine_shift(unsigned long pmc)
{
 if (cpu_has_feature(CPU_FTR_ARCH_300))
  return p9_MMCR1_COMBINE_SHIFT(pmc);

 return MMCR1_COMBINE_SHIFT(pmc);
}
