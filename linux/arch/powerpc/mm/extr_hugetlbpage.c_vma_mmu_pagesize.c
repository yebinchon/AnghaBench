
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; int vm_mm; } ;


 int CONFIG_PPC_MM_SLICES ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned int get_slice_psize (int ,int ) ;
 unsigned long mmu_psize_to_shift (unsigned int) ;
 int radix_enabled () ;
 unsigned long vma_kernel_pagesize (struct vm_area_struct*) ;

unsigned long vma_mmu_pagesize(struct vm_area_struct *vma)
{

 if (IS_ENABLED(CONFIG_PPC_MM_SLICES) && !radix_enabled()) {
  unsigned int psize = get_slice_psize(vma->vm_mm, vma->vm_start);

  return 1UL << mmu_psize_to_shift(psize);
 }
 return vma_kernel_pagesize(vma);
}
