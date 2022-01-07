
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; int vm_file; } ;
struct hstate {int dummy; } ;


 int __flush_tlb_page (int ,unsigned long,unsigned long,int ) ;
 struct hstate* hstate_file (int ) ;
 int huge_page_shift (struct hstate*) ;

void flush_hugetlb_page(struct vm_area_struct *vma, unsigned long vmaddr)
{
 struct hstate *hstate = hstate_file(vma->vm_file);
 unsigned long tsize = huge_page_shift(hstate) - 10;

 __flush_tlb_page(vma->vm_mm, vmaddr, tsize, 0);
}
