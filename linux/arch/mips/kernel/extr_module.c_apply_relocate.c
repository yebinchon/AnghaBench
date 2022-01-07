
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int Elf_Shdr ;


 int __apply_relocate (int *,char const*,unsigned int,unsigned int,struct module*,int) ;

int apply_relocate(Elf_Shdr *sechdrs, const char *strtab,
     unsigned int symindex, unsigned int relsec,
     struct module *me)
{
 return __apply_relocate(sechdrs, strtab, symindex, relsec, me, 0);
}
