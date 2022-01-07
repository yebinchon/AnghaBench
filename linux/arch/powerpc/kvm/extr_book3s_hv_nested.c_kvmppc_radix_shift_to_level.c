
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int PMD_SHIFT ;
 int PUD_SHIFT ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline int kvmppc_radix_shift_to_level(int shift)
{
 if (shift == PUD_SHIFT)
  return 2;
 if (shift == PMD_SHIFT)
  return 1;
 if (shift == PAGE_SHIFT)
  return 0;
 WARN_ON_ONCE(1);
 return 0;
}
