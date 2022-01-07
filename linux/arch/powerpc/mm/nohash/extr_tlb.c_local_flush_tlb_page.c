
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_mm; } ;


 int __local_flush_tlb_page (int *,unsigned long,int ,int ) ;
 int mmu_get_tsize (int ) ;
 int mmu_virtual_psize ;

void local_flush_tlb_page(struct vm_area_struct *vma, unsigned long vmaddr)
{
 __local_flush_tlb_page(vma ? vma->vm_mm : ((void*)0), vmaddr,
          mmu_get_tsize(mmu_virtual_psize), 0);
}
