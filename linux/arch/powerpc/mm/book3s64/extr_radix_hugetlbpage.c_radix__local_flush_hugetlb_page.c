
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; int vm_file; } ;
struct hstate {int dummy; } ;


 struct hstate* hstate_file (int ) ;
 int hstate_get_psize (struct hstate*) ;
 int radix__local_flush_tlb_page_psize (int ,unsigned long,int) ;

void radix__local_flush_hugetlb_page(struct vm_area_struct *vma, unsigned long vmaddr)
{
 int psize;
 struct hstate *hstate = hstate_file(vma->vm_file);

 psize = hstate_get_psize(hstate);
 radix__local_flush_tlb_page_psize(vma->vm_mm, vmaddr, psize);
}
