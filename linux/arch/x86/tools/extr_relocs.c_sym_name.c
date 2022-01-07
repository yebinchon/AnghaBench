
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_name; int st_shndx; } ;
typedef TYPE_1__ Elf_Sym ;


 char* sec_name (int ) ;

__attribute__((used)) static const char *sym_name(const char *sym_strtab, Elf_Sym *sym)
{
 const char *name;
 name = "<noname>";
 if (sym->st_name) {
  name = sym_strtab + sym->st_name;
 }
 else {
  name = sec_name(sym->st_shndx);
 }
 return name;
}
