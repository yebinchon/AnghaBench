
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int local_flush_tlb_all () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int tlb_entry_erase (unsigned long) ;
 scalar_t__ unlikely (int) ;
 int utlb_invalidate () ;

void local_flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 unsigned long flags;



 if (unlikely((end - start) >= PAGE_SIZE * 32)) {
  local_flush_tlb_all();
  return;
 }

 start &= PAGE_MASK;

 local_irq_save(flags);
 while (start < end) {
  tlb_entry_erase(start);
  start += PAGE_SIZE;
 }

 utlb_invalidate();

 local_irq_restore(flags);
}
