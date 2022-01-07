
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTRR_TO_PHYS_WC_OFFSET ;
 int MTRR_TYPE_WRCOMB ;
 int mtrr_add (unsigned long,unsigned long,int ,int) ;
 int mtrr_enabled () ;
 scalar_t__ pat_enabled () ;
 int pr_warn (char*,void*,void*) ;

int arch_phys_wc_add(unsigned long base, unsigned long size)
{
 int ret;

 if (pat_enabled() || !mtrr_enabled())
  return 0;

 ret = mtrr_add(base, size, MTRR_TYPE_WRCOMB, 1);
 if (ret < 0) {
  pr_warn("Failed to add WC MTRR for [%p-%p]; performance may suffer.",
   (void *)base, (void *)(base + size - 1));
  return ret;
 }
 return ret + MTRR_TO_PHYS_WC_OFFSET;
}
