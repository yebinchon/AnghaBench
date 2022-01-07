
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ELFCLASS64 ;
 scalar_t__ elf_class ;
 int get_symbols32 (char const*,void*) ;
 int get_symbols64 (char const*,void*) ;

__attribute__((used)) static bool get_symbols(const char *path, void *vdso)
{
 if (elf_class == ELFCLASS64)
  return get_symbols64(path, vdso);
 else
  return get_symbols32(path, vdso);
}
