
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct binder_alloc {struct vm_area_struct* vma; int vma_vm_mm; } ;


 int smp_wmb () ;

__attribute__((used)) static inline void binder_alloc_set_vma(struct binder_alloc *alloc,
  struct vm_area_struct *vma)
{
 if (vma)
  alloc->vma_vm_mm = vma->vm_mm;






 smp_wmb();
 alloc->vma = vma;
}
