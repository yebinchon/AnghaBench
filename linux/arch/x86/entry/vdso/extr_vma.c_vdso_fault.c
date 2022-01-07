
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_special_mapping {int dummy; } ;
struct vm_fault {int pgoff; int page; } ;
struct vm_area_struct {TYPE_2__* vm_mm; } ;
struct vdso_image {int size; scalar_t__ data; } ;
struct TYPE_3__ {struct vdso_image* vdso_image; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 int get_page (int ) ;
 int virt_to_page (scalar_t__) ;

__attribute__((used)) static vm_fault_t vdso_fault(const struct vm_special_mapping *sm,
        struct vm_area_struct *vma, struct vm_fault *vmf)
{
 const struct vdso_image *image = vma->vm_mm->context.vdso_image;

 if (!image || (vmf->pgoff << PAGE_SHIFT) >= image->size)
  return VM_FAULT_SIGBUS;

 vmf->page = virt_to_page(image->data + (vmf->pgoff << PAGE_SHIFT));
 get_page(vmf->page);
 return 0;
}
