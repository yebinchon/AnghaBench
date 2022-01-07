
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_2__ {int context; } ;


 int PFN_PHYS (unsigned long) ;
 int __flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int __purge_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 scalar_t__ likely (int ) ;
 scalar_t__ pfn_valid (unsigned long) ;

void
flush_cache_page(struct vm_area_struct *vma, unsigned long vmaddr, unsigned long pfn)
{
 if (pfn_valid(pfn)) {
  if (likely(vma->vm_mm->context)) {
   flush_tlb_page(vma, vmaddr);
   __flush_cache_page(vma, vmaddr, PFN_PHYS(pfn));
  } else {
   __purge_cache_page(vma, vmaddr, PFN_PHYS(pfn));
  }
 }
}
