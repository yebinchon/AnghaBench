
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int PMD_SHIFT ;
 int PUD_SHIFT ;

__attribute__((used)) static inline int kvmppc_radix_level_to_shift(int level)
{
 switch (level) {
 case 2:
  return PUD_SHIFT;
 case 1:
  return PMD_SHIFT;
 default:
  return PAGE_SHIFT;
 }
}
