
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vdso; } ;
struct mm_struct {TYPE_1__ context; } ;
struct linux_binprm {int dummy; } ;
typedef enum arch_vdso_type { ____Placeholder_arch_vdso_type } arch_vdso_type ;
struct TYPE_4__ {unsigned long vdso_pages; int cm; int dm; } ;


 void* ERR_PTR (unsigned long) ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int PTR_ERR (void*) ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 void* _install_special_mapping (struct mm_struct*,unsigned long,unsigned long,int,int ) ;
 unsigned long get_unmapped_area (int *,int ,unsigned long,int ,int ) ;
 TYPE_2__* vdso_lookup ;

__attribute__((used)) static int __setup_additional_pages(enum arch_vdso_type arch_index,
        struct mm_struct *mm,
        struct linux_binprm *bprm,
        int uses_interp)
{
 unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
 void *ret;

 vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;

 vdso_mapping_len = vdso_text_len + PAGE_SIZE;

 vdso_base = get_unmapped_area(((void*)0), 0, vdso_mapping_len, 0, 0);
 if (IS_ERR_VALUE(vdso_base)) {
  ret = ERR_PTR(vdso_base);
  goto up_fail;
 }

 ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
           VM_READ|VM_MAYREAD,
           vdso_lookup[arch_index].dm);
 if (IS_ERR(ret))
  goto up_fail;

 vdso_base += PAGE_SIZE;
 mm->context.vdso = (void *)vdso_base;
 ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
           VM_READ|VM_EXEC|
           VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
           vdso_lookup[arch_index].cm);
 if (IS_ERR(ret))
  goto up_fail;

 return 0;

up_fail:
 mm->context.vdso = ((void*)0);
 return PTR_ERR(ret);
}
