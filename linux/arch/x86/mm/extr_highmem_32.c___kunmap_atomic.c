
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 scalar_t__ FIX_KMAP_BEGIN ;
 scalar_t__ FIX_KMAP_END ;
 int KM_TYPE_NR ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_OFFSET ;
 int WARN_ON_ONCE (int) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int arch_flush_lazy_mmu_mode () ;
 scalar_t__ high_memory ;
 int kmap_atomic_idx () ;
 int kmap_atomic_idx_pop () ;
 scalar_t__ kmap_pte ;
 int kpte_clear_flush (scalar_t__,unsigned long) ;
 int pagefault_enable () ;
 int preempt_enable () ;
 int smp_processor_id () ;

void __kunmap_atomic(void *kvaddr)
{
 unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;

 if (vaddr >= __fix_to_virt(FIX_KMAP_END) &&
     vaddr <= __fix_to_virt(FIX_KMAP_BEGIN)) {
  int idx, type;

  type = kmap_atomic_idx();
  idx = type + KM_TYPE_NR * smp_processor_id();
  kpte_clear_flush(kmap_pte-idx, vaddr);
  kmap_atomic_idx_pop();
  arch_flush_lazy_mmu_mode();
 }







 pagefault_enable();
 preempt_enable();
}
