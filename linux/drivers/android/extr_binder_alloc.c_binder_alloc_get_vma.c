
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct binder_alloc {struct vm_area_struct* vma; } ;


 int smp_rmb () ;

__attribute__((used)) static inline struct vm_area_struct *binder_alloc_get_vma(
  struct binder_alloc *alloc)
{
 struct vm_area_struct *vma = ((void*)0);

 if (alloc->vma) {

  smp_rmb();
  vma = alloc->vma;
 }
 return vma;
}
