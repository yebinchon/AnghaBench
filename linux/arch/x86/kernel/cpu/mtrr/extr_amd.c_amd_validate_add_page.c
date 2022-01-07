
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int MTRR_TYPE_WRCOMB ;
 int PAGE_SHIFT ;

__attribute__((used)) static int
amd_validate_add_page(unsigned long base, unsigned long size, unsigned int type)
{
 if (type > MTRR_TYPE_WRCOMB || size < (1 << (17 - PAGE_SHIFT))
     || (size & ~(size - 1)) - size || (base & (size - 1)))
  return -EINVAL;
 return 0;
}
