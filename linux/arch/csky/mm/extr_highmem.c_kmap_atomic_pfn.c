
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int PAGE_KERNEL ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int flush_tlb_one (unsigned long) ;
 int kmap_atomic_idx_push () ;
 scalar_t__ kmap_pte ;
 int pagefault_disable () ;
 int pfn_pte (unsigned long,int ) ;
 int set_pte (scalar_t__,int ) ;
 int smp_processor_id () ;

void *kmap_atomic_pfn(unsigned long pfn)
{
 unsigned long vaddr;
 int idx, type;

 pagefault_disable();

 type = kmap_atomic_idx_push();
 idx = type + KM_TYPE_NR*smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);
 set_pte(kmap_pte-idx, pfn_pte(pfn, PAGE_KERNEL));
 flush_tlb_one(vaddr);

 return (void *) vaddr;
}
