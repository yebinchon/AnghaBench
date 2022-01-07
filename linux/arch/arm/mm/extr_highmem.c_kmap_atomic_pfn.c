
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int PageHighMem (struct page*) ;
 unsigned long __fix_to_virt (int) ;
 int get_fixmap_pte (unsigned long) ;
 int kmap_atomic_idx_push () ;
 int kmap_prot ;
 void* page_address (struct page*) ;
 int pagefault_disable () ;
 int pfn_pte (unsigned long,int ) ;
 struct page* pfn_to_page (unsigned long) ;
 int preempt_disable () ;
 int pte_none (int ) ;
 int set_fixmap_pte (int,int ) ;
 int smp_processor_id () ;

void *kmap_atomic_pfn(unsigned long pfn)
{
 unsigned long vaddr;
 int idx, type;
 struct page *page = pfn_to_page(pfn);

 preempt_disable();
 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);

 type = kmap_atomic_idx_push();
 idx = FIX_KMAP_BEGIN + type + KM_TYPE_NR * smp_processor_id();
 vaddr = __fix_to_virt(idx);



 set_fixmap_pte(idx, pfn_pte(pfn, kmap_prot));

 return (void *)vaddr;
}
