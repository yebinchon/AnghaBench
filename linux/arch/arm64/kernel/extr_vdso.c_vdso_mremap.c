
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_special_mapping {int dummy; } ;
struct vm_area_struct {int dummy; } ;


 int ARM64_VDSO ;
 int __vdso_remap (int ,struct vm_special_mapping const*,struct vm_area_struct*) ;

__attribute__((used)) static int vdso_mremap(const struct vm_special_mapping *sm,
  struct vm_area_struct *new_vma)
{
 return __vdso_remap(ARM64_VDSO, sm, new_vma);
}
