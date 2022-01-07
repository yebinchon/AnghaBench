
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdso_elfinfo {int dummy; } ;


 int patchsym32 (struct vdso_elfinfo*,char const*,char const*) ;
 int patchsym64 (struct vdso_elfinfo*,char const*,char const*) ;

__attribute__((used)) static int patch_one_symbol(struct vdso_elfinfo *e, const char *orig,
       const char *new_target, bool elf64)
{
 if (elf64)
  return patchsym64(e, orig, new_target);
 else
  return patchsym32(e, orig, new_target);
}
