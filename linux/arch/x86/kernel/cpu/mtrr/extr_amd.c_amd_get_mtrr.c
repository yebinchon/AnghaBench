
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mtrr_type ;


 int MSR_K6_UWCCR ;
 scalar_t__ MTRR_TYPE_UNCACHABLE ;
 scalar_t__ MTRR_TYPE_WRCOMB ;
 unsigned long PAGE_SHIFT ;
 int rdmsr (int ,unsigned long,unsigned long) ;

__attribute__((used)) static void
amd_get_mtrr(unsigned int reg, unsigned long *base,
      unsigned long *size, mtrr_type *type)
{
 unsigned long low, high;

 rdmsr(MSR_K6_UWCCR, low, high);

 if (reg == 1)
  low = high;

 *base = (low & 0xFFFE0000) >> PAGE_SHIFT;
 *type = 0;
 if (low & 1)
  *type = MTRR_TYPE_UNCACHABLE;
 if (low & 2)
  *type = MTRR_TYPE_WRCOMB;
 if (!(low & 3)) {
  *size = 0;
  return;
 }
 low = (~low) & 0x1FFFC;
 *size = (low + 4) << (15 - PAGE_SHIFT);
}
