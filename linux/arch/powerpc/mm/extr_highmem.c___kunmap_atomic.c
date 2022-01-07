
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_DEBUG_HIGHMEM ;
 scalar_t__ FIX_KMAP_BEGIN ;
 scalar_t__ FIX_KMAP_END ;
 scalar_t__ IS_ENABLED (int ) ;
 int KM_TYPE_NR ;
 unsigned long PAGE_MASK ;
 int WARN_ON (int) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int init_mm ;
 int kmap_atomic_idx () ;
 int kmap_atomic_idx_pop () ;
 scalar_t__ kmap_pte ;
 int local_flush_tlb_page (int *,unsigned long) ;
 int pagefault_enable () ;
 int preempt_enable () ;
 int pte_clear (int *,unsigned long,scalar_t__) ;
 int smp_processor_id () ;

void __kunmap_atomic(void *kvaddr)
{
 unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;

 if (vaddr < __fix_to_virt(FIX_KMAP_END)) {
  pagefault_enable();
  preempt_enable();
  return;
 }

 if (IS_ENABLED(CONFIG_DEBUG_HIGHMEM)) {
  int type = kmap_atomic_idx();
  unsigned int idx;

  idx = type + KM_TYPE_NR * smp_processor_id();
  WARN_ON(vaddr != __fix_to_virt(FIX_KMAP_BEGIN + idx));





  pte_clear(&init_mm, vaddr, kmap_pte-idx);
  local_flush_tlb_page(((void*)0), vaddr);
 }

 kmap_atomic_idx_pop();
 pagefault_enable();
 preempt_enable();
}
