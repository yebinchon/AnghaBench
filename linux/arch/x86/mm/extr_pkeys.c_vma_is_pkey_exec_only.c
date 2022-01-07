
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; TYPE_2__* vm_mm; } ;
struct TYPE_3__ {scalar_t__ execute_only_pkey; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int VM_EXEC ;
 int VM_READ ;
 int VM_WRITE ;
 scalar_t__ vma_pkey (struct vm_area_struct*) ;

__attribute__((used)) static inline bool vma_is_pkey_exec_only(struct vm_area_struct *vma)
{

 if ((vma->vm_flags & (VM_READ | VM_WRITE | VM_EXEC)) != VM_EXEC)
  return 0;
 if (vma_pkey(vma) != vma->vm_mm->context.execute_only_pkey)
  return 0;

 return 1;
}
