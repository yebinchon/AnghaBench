
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ITLB_ARF_WAYS ;
 int PAGE_SHIFT ;
 int XCHAL_ITLB_ARF_ENTRIES_LOG2 ;
 int invalidate_itlb_entry_no_isync (int) ;

__attribute__((used)) static inline void __flush_itlb_all (void)
{
 int w, i;

 for (w = 0; w < ITLB_ARF_WAYS; w++) {
  for (i = 0; i < (1 << XCHAL_ITLB_ARF_ENTRIES_LOG2); i++) {
   int e = w + (i << PAGE_SHIFT);
   invalidate_itlb_entry_no_isync(e);
  }
 }
 asm volatile ("isync\n");
}
