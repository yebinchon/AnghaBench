
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int flush_dtlb_page_eir (int) ;
 int flush_dtlb_page_no_eir (int) ;
 int flush_itlb_page_eir (int) ;
 int flush_itlb_page_no_eir (int) ;
 int have_dtlbeir ;
 int have_itlbeir ;

void local_flush_tlb_range(struct vm_area_struct *vma,
      unsigned long start, unsigned long end)
{
 int addr;
 bool dtlbeir;
 bool itlbeir;

 dtlbeir = have_dtlbeir;
 itlbeir = have_itlbeir;

 for (addr = start; addr < end; addr += PAGE_SIZE) {
  if (dtlbeir)
   flush_dtlb_page_eir(addr);
  else
   flush_dtlb_page_no_eir(addr);

  if (itlbeir)
   flush_itlb_page_eir(addr);
  else
   flush_itlb_page_no_eir(addr);
 }
}
