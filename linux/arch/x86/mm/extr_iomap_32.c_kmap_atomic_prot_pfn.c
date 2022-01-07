
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int arch_flush_lazy_mmu_mode () ;
 int kmap_atomic_idx_push () ;
 scalar_t__ kmap_pte ;
 int pagefault_disable () ;
 int pfn_pte (unsigned long,int ) ;
 int preempt_disable () ;
 int set_pte (scalar_t__,int ) ;
 int smp_processor_id () ;

void *kmap_atomic_prot_pfn(unsigned long pfn, pgprot_t prot)
{
 unsigned long vaddr;
 int idx, type;

 preempt_disable();
 pagefault_disable();

 type = kmap_atomic_idx_push();
 idx = type + KM_TYPE_NR * smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);
 set_pte(kmap_pte - idx, pfn_pte(pfn, prot));
 arch_flush_lazy_mmu_mode();

 return (void *)vaddr;
}
