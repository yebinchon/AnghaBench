
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_2__ {int lock; scalar_t__ thp_pte_count; scalar_t__ hugetlb_pte_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 int MM_TSB_BASE ;
 int MM_TSB_HUGE ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long PMD_SIZE ;
 unsigned long PUD_SIZE ;
 unsigned long REAL_HPAGE_SHIFT ;
 int __update_mmu_tsb_insert (struct mm_struct*,int ,unsigned long,unsigned long,unsigned long) ;
 int flush_dcache (unsigned long) ;
 int hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_size (int ) ;
 scalar_t__ hypervisor ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 scalar_t__ pfn_valid (unsigned long) ;
 int pte_accessible (struct mm_struct*,int ) ;
 unsigned long pte_pfn (int ) ;
 unsigned long pte_val (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tlb_type ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long address, pte_t *ptep)
{
 struct mm_struct *mm;
 unsigned long flags;
 bool is_huge_tsb;
 pte_t pte = *ptep;

 if (tlb_type != hypervisor) {
  unsigned long pfn = pte_pfn(pte);

  if (pfn_valid(pfn))
   flush_dcache(pfn);
 }

 mm = vma->vm_mm;


 if (!pte_accessible(mm, pte))
  return;

 spin_lock_irqsave(&mm->context.lock, flags);

 is_huge_tsb = 0;
 if (!is_huge_tsb)
  __update_mmu_tsb_insert(mm, MM_TSB_BASE, PAGE_SHIFT,
     address, pte_val(pte));

 spin_unlock_irqrestore(&mm->context.lock, flags);
}
