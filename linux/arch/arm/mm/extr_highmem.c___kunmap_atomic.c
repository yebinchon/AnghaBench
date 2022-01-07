
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 scalar_t__ FIXADDR_START ;
 int FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int LAST_PKMAP ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 unsigned long PKMAP_ADDR (int ) ;
 size_t PKMAP_NR (unsigned long) ;
 int __cpuc_flush_dcache_area (void*,int ) ;
 unsigned long __fix_to_virt (int) ;
 int __pte (int ) ;
 scalar_t__ cache_is_vivt () ;
 int kmap_atomic_idx () ;
 int kmap_atomic_idx_pop () ;
 int kunmap_high (int ) ;
 int pagefault_enable () ;
 int * pkmap_page_table ;
 int preempt_enable () ;
 int pte_page (int ) ;
 int set_fixmap_pte (int,int ) ;
 int smp_processor_id () ;

void __kunmap_atomic(void *kvaddr)
{
 unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 int idx, type;

 if (kvaddr >= (void *)FIXADDR_START) {
  type = kmap_atomic_idx();
  idx = FIX_KMAP_BEGIN + type + KM_TYPE_NR * smp_processor_id();

  if (cache_is_vivt())
   __cpuc_flush_dcache_area((void *)vaddr, PAGE_SIZE);




  (void) idx;

  kmap_atomic_idx_pop();
 } else if (vaddr >= PKMAP_ADDR(0) && vaddr < PKMAP_ADDR(LAST_PKMAP)) {

  kunmap_high(pte_page(pkmap_page_table[PKMAP_NR(vaddr)]));
 }
 pagefault_enable();
 preempt_enable();
}
