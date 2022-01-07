
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 unsigned long MAS0_ESEL (int) ;
 unsigned long MAS0_TLBSEL (int) ;
 unsigned long MAS1_TID (int ) ;
 unsigned long MAS1_TSIZE (unsigned long) ;
 unsigned long MAS1_VALID ;
 unsigned long MAS2_WIMGE_MASK ;
 unsigned long MAS3_BAP_MASK ;
 unsigned long MAS3_SW ;
 unsigned long MAS3_UW ;
 int MMU_FTR_BIG_PHYS ;
 int MMU_FTR_USE_PAIRED_MAS ;
 unsigned long PAGE_SHIFT ;
 unsigned long PTE_BAP_SHIFT ;
 unsigned long PTE_WIMGE_SHIFT ;
 int SPRN_MAS0 ;
 int SPRN_MAS1 ;
 int SPRN_MAS2 ;
 int SPRN_MAS3 ;
 int SPRN_MAS7 ;
 int SPRN_MAS7_MAS3 ;
 unsigned long __ilog2 (unsigned long) ;
 int book3e_tlb_exists (unsigned long,int ) ;
 int book3e_tlb_lock () ;
 int book3e_tlb_unlock () ;
 int is_kernel_addr (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long lower_32_bits (unsigned long) ;
 scalar_t__ mmu_has_feature (int ) ;
 int mtspr (int ,unsigned long) ;
 int pte_dirty (int ) ;
 scalar_t__ pte_pfn (int ) ;
 unsigned long pte_val (int ) ;
 int tlb1_next () ;
 scalar_t__ unlikely (int ) ;
 unsigned long upper_32_bits (unsigned long) ;
 unsigned long vma_mmu_pagesize (struct vm_area_struct*) ;

__attribute__((used)) static void
book3e_hugetlb_preload(struct vm_area_struct *vma, unsigned long ea, pte_t pte)
{
 unsigned long mas1, mas2;
 u64 mas7_3;
 unsigned long psize, tsize, shift;
 unsigned long flags;
 struct mm_struct *mm;
 int index;

 if (unlikely(is_kernel_addr(ea)))
  return;

 mm = vma->vm_mm;

 psize = vma_mmu_pagesize(vma);
 shift = __ilog2(psize);
 tsize = shift - 10;




 local_irq_save(flags);

 book3e_tlb_lock();

 if (unlikely(book3e_tlb_exists(ea, mm->context.id))) {
  book3e_tlb_unlock();
  local_irq_restore(flags);
  return;
 }


 index = tlb1_next();
 mtspr(SPRN_MAS0, MAS0_ESEL(index) | MAS0_TLBSEL(1));

 mas1 = MAS1_VALID | MAS1_TID(mm->context.id) | MAS1_TSIZE(tsize);
 mas2 = ea & ~((1UL << shift) - 1);
 mas2 |= (pte_val(pte) >> PTE_WIMGE_SHIFT) & MAS2_WIMGE_MASK;
 mas7_3 = (u64)pte_pfn(pte) << PAGE_SHIFT;
 mas7_3 |= (pte_val(pte) >> PTE_BAP_SHIFT) & MAS3_BAP_MASK;
 if (!pte_dirty(pte))
  mas7_3 &= ~(MAS3_SW|MAS3_UW);

 mtspr(SPRN_MAS1, mas1);
 mtspr(SPRN_MAS2, mas2);

 if (mmu_has_feature(MMU_FTR_USE_PAIRED_MAS)) {
  mtspr(SPRN_MAS7_MAS3, mas7_3);
 } else {
  if (mmu_has_feature(MMU_FTR_BIG_PHYS))
   mtspr(SPRN_MAS7, upper_32_bits(mas7_3));
  mtspr(SPRN_MAS3, lower_32_bits(mas7_3));
 }

 asm volatile ("tlbwe");

 book3e_tlb_unlock();
 local_irq_restore(flags);
}
