
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; TYPE_1__* vm_mm; } ;
typedef int pte_t ;
typedef int pgd_t ;
struct TYPE_2__ {scalar_t__ context; int * pgd; } ;


 int CONFIG_SMP ;
 int IS_ENABLED (int ) ;
 scalar_t__ PAGE_SIZE ;
 int PFN_PHYS (unsigned long) ;
 int VM_EXEC ;
 int __flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int __purge_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int arch_irqs_disabled () ;
 int flush_cache_all () ;
 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int flush_user_dcache_range_asm (unsigned long,unsigned long) ;
 int flush_user_icache_range_asm (unsigned long,unsigned long) ;
 int * get_ptep (int *,unsigned long) ;
 scalar_t__ mfsp (int) ;
 unsigned long parisc_cache_flush_threshold ;
 scalar_t__ pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ unlikely (scalar_t__) ;

void flush_cache_range(struct vm_area_struct *vma,
  unsigned long start, unsigned long end)
{
 pgd_t *pgd;
 unsigned long addr;

 if ((!IS_ENABLED(CONFIG_SMP) || !arch_irqs_disabled()) &&
     end - start >= parisc_cache_flush_threshold) {
  if (vma->vm_mm->context)
   flush_tlb_range(vma, start, end);
  flush_cache_all();
  return;
 }

 if (vma->vm_mm->context == mfsp(3)) {
  flush_user_dcache_range_asm(start, end);
  if (vma->vm_flags & VM_EXEC)
   flush_user_icache_range_asm(start, end);
  flush_tlb_range(vma, start, end);
  return;
 }

 pgd = vma->vm_mm->pgd;
 for (addr = vma->vm_start; addr < vma->vm_end; addr += PAGE_SIZE) {
  unsigned long pfn;
  pte_t *ptep = get_ptep(pgd, addr);
  if (!ptep)
   continue;
  pfn = pte_pfn(*ptep);
  if (pfn_valid(pfn)) {
   if (unlikely(vma->vm_mm->context)) {
    flush_tlb_page(vma, addr);
    __flush_cache_page(vma, addr, PFN_PHYS(pfn));
   } else {
    __purge_cache_page(vma, addr, PFN_PHYS(pfn));
   }
  }
 }
}
