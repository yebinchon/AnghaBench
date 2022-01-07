
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int PageHighMem (struct page*) ;
 unsigned long __fix_to_virt (unsigned int) ;
 int cache_is_vivt () ;
 int get_fixmap_pte (unsigned long) ;
 int kmap_atomic_idx_push () ;
 void* kmap_high_get (struct page*) ;
 int kmap_prot ;
 int mk_pte (struct page*,int ) ;
 void* page_address (struct page*) ;
 int pagefault_disable () ;
 int preempt_disable () ;
 int pte_none (int ) ;
 int set_fixmap_pte (unsigned int,int ) ;
 int smp_processor_id () ;

void *kmap_atomic(struct page *page)
{
 unsigned int idx;
 unsigned long vaddr;
 void *kmap;
 int type;

 preempt_disable();
 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);
  kmap = kmap_high_get(page);
 if (kmap)
  return kmap;

 type = kmap_atomic_idx_push();

 idx = FIX_KMAP_BEGIN + type + KM_TYPE_NR * smp_processor_id();
 vaddr = __fix_to_virt(idx);
 set_fixmap_pte(idx, mk_pte(page, kmap_prot));

 return (void *)vaddr;
}
