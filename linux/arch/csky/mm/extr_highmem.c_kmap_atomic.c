
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int PAGE_KERNEL ;
 int PageHighMem (struct page*) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int flush_tlb_one (unsigned long) ;
 int kmap_atomic_idx_push () ;
 int * kmap_pte ;
 int mk_pte (struct page*,int ) ;
 void* page_address (struct page*) ;
 int pagefault_disable () ;
 int preempt_disable () ;
 int pte_none (int ) ;
 int set_pte (int *,int ) ;
 int smp_processor_id () ;

void *kmap_atomic(struct page *page)
{
 unsigned long vaddr;
 int idx, type;

 preempt_disable();
 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);

 type = kmap_atomic_idx_push();
 idx = type + KM_TYPE_NR*smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);



 set_pte(kmap_pte-idx, mk_pte(page, PAGE_KERNEL));
 flush_tlb_one((unsigned long)vaddr);

 return (void *)vaddr;
}
