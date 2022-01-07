
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 int VM_SPARC_ADI ;
 int hstate_vma (struct vm_area_struct*) ;
 unsigned int huge_page_shift (int ) ;
 int hugepage_shift_to_tte (int ,unsigned int) ;
 int pte_mkmcd (int ) ;
 int pte_mknotmcd (int ) ;

pte_t arch_make_huge_pte(pte_t entry, struct vm_area_struct *vma,
    struct page *page, int writeable)
{
 unsigned int shift = huge_page_shift(hstate_vma(vma));
 pte_t pte;

 pte = hugepage_shift_to_tte(entry, shift);
 return pte;

}
