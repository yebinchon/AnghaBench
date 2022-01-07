
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 scalar_t__ FIXADDR_START ;
 int __nds32__isb () ;
 int __nds32__tlbop_inv (unsigned long) ;
 int kmap_atomic_idx_pop () ;
 int pagefault_enable () ;
 int pmd_off_k (unsigned long) ;
 int preempt_enable () ;
 int * pte_offset_kernel (int ,unsigned long) ;
 int set_pte (int *,int ) ;

void __kunmap_atomic(void *kvaddr)
{
 if (kvaddr >= (void *)FIXADDR_START) {
  unsigned long vaddr = (unsigned long)kvaddr;
  pte_t *ptep;
  kmap_atomic_idx_pop();
  __nds32__tlbop_inv(vaddr);
  __nds32__isb();
  ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);
  set_pte(ptep, 0);
 }
 pagefault_enable();
 preempt_enable();
}
