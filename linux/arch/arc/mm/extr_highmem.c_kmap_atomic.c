
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long FIXMAP_ADDR (int) ;
 int KM_TYPE_NR ;
 int PageHighMem (struct page*) ;
 scalar_t__ fixmap_page_table ;
 int init_mm ;
 int kmap_atomic_idx_push () ;
 int kmap_prot ;
 int mk_pte (struct page*,int ) ;
 void* page_address (struct page*) ;
 int pagefault_disable () ;
 int preempt_disable () ;
 int set_pte_at (int *,unsigned long,scalar_t__,int ) ;
 int smp_processor_id () ;

void *kmap_atomic(struct page *page)
{
 int idx, cpu_idx;
 unsigned long vaddr;

 preempt_disable();
 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);

 cpu_idx = kmap_atomic_idx_push();
 idx = cpu_idx + KM_TYPE_NR * smp_processor_id();
 vaddr = FIXMAP_ADDR(idx);

 set_pte_at(&init_mm, vaddr, fixmap_page_table + idx,
     mk_pte(page, kmap_prot));

 return (void *)vaddr;
}
