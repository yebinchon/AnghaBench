
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int PAGE_SIZE ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_READ ;
 TYPE_1__* current ;
 int install_special_mapping (struct mm_struct*,int,int ,int,int *) ;

int vectors_user_mapping(void)
{
 struct mm_struct *mm = current->mm;
 return install_special_mapping(mm, 0xffff0000, PAGE_SIZE,
           VM_READ | VM_EXEC |
           VM_MAYREAD | VM_MAYEXEC |
           VM_DONTEXPAND | VM_DONTDUMP,
           ((void*)0));
}
