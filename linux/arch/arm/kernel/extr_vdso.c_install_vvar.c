
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 int PAGE_SIZE ;
 int PTR_ERR_OR_ZERO (struct vm_area_struct*) ;
 int VM_MAYREAD ;
 int VM_READ ;
 struct vm_area_struct* _install_special_mapping (struct mm_struct*,unsigned long,int ,int,int *) ;
 int vdso_data_mapping ;

__attribute__((used)) static int install_vvar(struct mm_struct *mm, unsigned long addr)
{
 struct vm_area_struct *vma;

 vma = _install_special_mapping(mm, addr, PAGE_SIZE,
           VM_READ | VM_MAYREAD,
           &vdso_data_mapping);

 return PTR_ERR_OR_ZERO(vma);
}
