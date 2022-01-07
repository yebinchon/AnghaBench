
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct vm_area_struct* vm_next; } ;
struct vdso_image {int dummy; } ;
struct mm_struct {int mmap_sem; struct vm_area_struct* mmap; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int EEXIST ;
 TYPE_1__* current ;
 int down_write (int *) ;
 int map_vdso (struct vdso_image const*,unsigned long) ;
 int up_write (int *) ;
 int vdso_mapping ;
 scalar_t__ vma_is_special_mapping (struct vm_area_struct*,int *) ;
 int vvar_mapping ;

int map_vdso_once(const struct vdso_image *image, unsigned long addr)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;

 down_write(&mm->mmap_sem);







 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  if (vma_is_special_mapping(vma, &vdso_mapping) ||
    vma_is_special_mapping(vma, &vvar_mapping)) {
   up_write(&mm->mmap_sem);
   return -EEXIST;
  }
 }
 up_write(&mm->mmap_sem);

 return map_vdso(image, addr);
}
