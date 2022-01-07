
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCACHE_ALIAS (unsigned long) ;
 scalar_t__ FIXADDR_START ;
 scalar_t__ FIXADDR_TOP ;
 scalar_t__ PAGE_SIZE ;
 int init_mm ;
 int kmap_atomic_idx () ;
 int kmap_atomic_idx_pop () ;
 int kmap_idx (int ,int ) ;
 scalar_t__ kmap_pte ;
 int local_flush_tlb_kernel_range (unsigned long,scalar_t__) ;
 int pagefault_enable () ;
 int preempt_enable () ;
 int pte_clear (int *,void*,scalar_t__) ;

void __kunmap_atomic(void *kvaddr)
{
 if (kvaddr >= (void *)FIXADDR_START &&
     kvaddr < (void *)FIXADDR_TOP) {
  int idx = kmap_idx(kmap_atomic_idx(),
       DCACHE_ALIAS((unsigned long)kvaddr));







  pte_clear(&init_mm, kvaddr, kmap_pte + idx);
  local_flush_tlb_kernel_range((unsigned long)kvaddr,
          (unsigned long)kvaddr + PAGE_SIZE);

  kmap_atomic_idx_pop();
 }

 pagefault_enable();
 preempt_enable();
}
