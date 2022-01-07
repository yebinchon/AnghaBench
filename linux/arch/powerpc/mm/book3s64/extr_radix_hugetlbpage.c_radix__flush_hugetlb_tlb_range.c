
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; int vm_file; } ;
struct hstate {int dummy; } ;


 struct hstate* hstate_file (int ) ;
 int hstate_get_psize (struct hstate*) ;
 int radix__flush_tlb_range_psize (int ,unsigned long,unsigned long,int) ;

void radix__flush_hugetlb_tlb_range(struct vm_area_struct *vma, unsigned long start,
       unsigned long end)
{
 int psize;
 struct hstate *hstate = hstate_file(vma->vm_file);

 psize = hstate_get_psize(hstate);
 radix__flush_tlb_range_psize(vma->vm_mm, start, end, psize);
}
