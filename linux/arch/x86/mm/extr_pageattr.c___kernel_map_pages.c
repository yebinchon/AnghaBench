
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int __flush_tlb_all () ;
 int __set_pages_np (struct page*,int) ;
 int __set_pages_p (struct page*,int) ;
 int arch_flush_lazy_mmu_mode () ;
 int debug_check_no_locks_freed (int ,int) ;
 int page_address (struct page*) ;
 int preempt_disable () ;
 int preempt_enable () ;

void __kernel_map_pages(struct page *page, int numpages, int enable)
{
 if (PageHighMem(page))
  return;
 if (!enable) {
  debug_check_no_locks_freed(page_address(page),
        numpages * PAGE_SIZE);
 }






 if (enable)
  __set_pages_p(page, numpages);
 else
  __set_pages_np(page, numpages);







 preempt_disable();
 __flush_tlb_all();
 preempt_enable();

 arch_flush_lazy_mmu_mode();
}
