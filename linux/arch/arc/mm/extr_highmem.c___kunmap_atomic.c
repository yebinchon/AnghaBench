
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FIXMAP_ADDR (int) ;
 unsigned long FIXMAP_BASE ;
 unsigned long FIXMAP_SIZE ;
 int KM_TYPE_NR ;
 scalar_t__ PAGE_SIZE ;
 int WARN_ON (int) ;
 scalar_t__ fixmap_page_table ;
 int init_mm ;
 int kmap_atomic_idx () ;
 int kmap_atomic_idx_pop () ;
 int local_flush_tlb_kernel_range (unsigned long,scalar_t__) ;
 int pagefault_enable () ;
 int preempt_enable () ;
 int pte_clear (int *,unsigned long,scalar_t__) ;
 int smp_processor_id () ;

void __kunmap_atomic(void *kv)
{
 unsigned long kvaddr = (unsigned long)kv;

 if (kvaddr >= FIXMAP_BASE && kvaddr < (FIXMAP_BASE + FIXMAP_SIZE)) {







  int cpu_idx = kmap_atomic_idx();
  int idx = cpu_idx + KM_TYPE_NR * smp_processor_id();

  WARN_ON(kvaddr != FIXMAP_ADDR(idx));

  pte_clear(&init_mm, kvaddr, fixmap_page_table + idx);
  local_flush_tlb_kernel_range(kvaddr, kvaddr + PAGE_SIZE);

  kmap_atomic_idx_pop();
 }

 pagefault_enable();
 preempt_enable();
}
