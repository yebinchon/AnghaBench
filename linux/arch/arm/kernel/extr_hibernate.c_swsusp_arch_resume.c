
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (scalar_t__) ;
 int arch_restore_image ;
 int call_with_stack (int ,int ,scalar_t__) ;
 scalar_t__ resume_stack ;

int swsusp_arch_resume(void)
{
 call_with_stack(arch_restore_image, 0,
  resume_stack + ARRAY_SIZE(resume_stack));
 return 0;
}
