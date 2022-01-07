
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long FIXADDR_START ;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 unsigned long PAGE_MASK ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int flush_tlb_one (unsigned long) ;
 int init_mm ;
 int kmap_atomic_idx () ;
 int kmap_atomic_idx_pop () ;
 scalar_t__ kmap_pte ;
 int pagefault_enable () ;
 int preempt_enable () ;
 int pte_clear (int *,unsigned long,scalar_t__) ;
 int smp_processor_id () ;

void __kunmap_atomic(void *kvaddr)
{
 unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 int idx;

 if (vaddr < FIXADDR_START)
  goto out;
 (void) idx;

 kmap_atomic_idx_pop();
out:
 pagefault_enable();
 preempt_enable();
}
