
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int dummy; } ;


 int load_vdso32 () ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 return load_vdso32();
}
