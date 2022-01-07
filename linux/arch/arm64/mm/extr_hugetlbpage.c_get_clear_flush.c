
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;


 struct vm_area_struct TLB_FLUSH_VMA (struct mm_struct*,int ) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int huge_ptep_get (int *) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkyoung (int ) ;
 int pte_valid (int ) ;
 scalar_t__ pte_young (int ) ;
 int ptep_get_and_clear (struct mm_struct*,unsigned long,int *) ;

__attribute__((used)) static pte_t get_clear_flush(struct mm_struct *mm,
        unsigned long addr,
        pte_t *ptep,
        unsigned long pgsize,
        unsigned long ncontig)
{
 pte_t orig_pte = huge_ptep_get(ptep);
 bool valid = pte_valid(orig_pte);
 unsigned long i, saddr = addr;

 for (i = 0; i < ncontig; i++, addr += pgsize, ptep++) {
  pte_t pte = ptep_get_and_clear(mm, addr, ptep);






  if (pte_dirty(pte))
   orig_pte = pte_mkdirty(orig_pte);

  if (pte_young(pte))
   orig_pte = pte_mkyoung(orig_pte);
 }

 if (valid) {
  struct vm_area_struct vma = TLB_FLUSH_VMA(mm, 0);
  flush_tlb_range(&vma, saddr, addr);
 }
 return orig_pte;
}
