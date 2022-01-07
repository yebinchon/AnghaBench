
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int flush_dtlb_page_eir (unsigned long) ;
 int flush_dtlb_page_no_eir (unsigned long) ;
 int flush_itlb_page_eir (unsigned long) ;
 int flush_itlb_page_no_eir (unsigned long) ;
 scalar_t__ have_dtlbeir ;
 scalar_t__ have_itlbeir ;

void local_flush_tlb_page(struct vm_area_struct *vma, unsigned long addr)
{
 if (have_dtlbeir)
  flush_dtlb_page_eir(addr);
 else
  flush_dtlb_page_no_eir(addr);

 if (have_itlbeir)
  flush_itlb_page_eir(addr);
 else
  flush_itlb_page_no_eir(addr);
}
