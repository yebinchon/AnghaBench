
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ELFCLASS64 ;
 scalar_t__ elf_class ;
 int patch_vdso32 (char const*,void*) ;
 int patch_vdso64 (char const*,void*) ;

__attribute__((used)) static bool patch_vdso(const char *path, void *vdso)
{
 if (elf_class == ELFCLASS64)
  return patch_vdso64(path, vdso);
 else
  return patch_vdso32(path, vdso);
}
