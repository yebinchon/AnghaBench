
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int dummy; } ;


 int is_32bit_task () ;
 int map_vdso (int *,int *) ;
 int vdso_enabled ;
 int vdso_image_32_builtin ;
 int vdso_image_64_builtin ;
 int vdso_mapping32 ;
 int vdso_mapping64 ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{

 if (!vdso_enabled)
  return 0;







 return map_vdso(&vdso_image_64_builtin, &vdso_mapping64);


}
