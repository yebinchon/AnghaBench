
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int BUG_ON (int) ;
 int DCACHE_ALIAS (int ) ;
 int FIX_KMAP_BEGIN ;
 int PAGE_KERNEL_EXEC ;
 int PageHighMem (struct page*) ;
 unsigned long __fix_to_virt (int) ;
 int kmap_atomic_idx_push () ;
 int kmap_idx (int ,int ) ;
 int * kmap_pte ;
 int mk_pte (struct page*,int ) ;
 void* page_address (struct page*) ;
 int page_to_phys (struct page*) ;
 int pagefault_disable () ;
 int preempt_disable () ;
 int pte_none (int ) ;
 int set_pte (int *,int ) ;

void *kmap_atomic(struct page *page)
{
 enum fixed_addresses idx;
 unsigned long vaddr;

 preempt_disable();
 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);

 idx = kmap_idx(kmap_atomic_idx_push(),
         DCACHE_ALIAS(page_to_phys(page)));
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);



 set_pte(kmap_pte + idx, mk_pte(page, PAGE_KERNEL_EXEC));

 return (void *)vaddr;
}
