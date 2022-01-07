
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 size_t PAGE_SHIFT ;
 int __cont_access_flags_changed (int *,int ,int) ;
 int find_num_contig (int ,unsigned long,int *,size_t*) ;
 int get_clear_flush (int ,unsigned long,int *,size_t,int) ;
 int pfn_pte (unsigned long,int ) ;
 int pte_cont (int ) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkyoung (int ) ;
 unsigned long pte_pfn (int ) ;
 int pte_pgprot (int ) ;
 scalar_t__ pte_young (int ) ;
 int ptep_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,int) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;

int huge_ptep_set_access_flags(struct vm_area_struct *vma,
          unsigned long addr, pte_t *ptep,
          pte_t pte, int dirty)
{
 int ncontig, i;
 size_t pgsize = 0;
 unsigned long pfn = pte_pfn(pte), dpfn;
 pgprot_t hugeprot;
 pte_t orig_pte;

 if (!pte_cont(pte))
  return ptep_set_access_flags(vma, addr, ptep, pte, dirty);

 ncontig = find_num_contig(vma->vm_mm, addr, ptep, &pgsize);
 dpfn = pgsize >> PAGE_SHIFT;

 if (!__cont_access_flags_changed(ptep, pte, ncontig))
  return 0;

 orig_pte = get_clear_flush(vma->vm_mm, addr, ptep, pgsize, ncontig);


 if (pte_dirty(orig_pte))
  pte = pte_mkdirty(pte);

 if (pte_young(orig_pte))
  pte = pte_mkyoung(pte);

 hugeprot = pte_pgprot(pte);
 for (i = 0; i < ncontig; i++, ptep++, addr += pgsize, pfn += dpfn)
  set_pte_at(vma->vm_mm, addr, ptep, pfn_pte(pfn, hugeprot));

 return 1;
}
