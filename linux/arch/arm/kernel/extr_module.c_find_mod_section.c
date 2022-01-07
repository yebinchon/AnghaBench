
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t e_shstrndx; int e_shnum; } ;
struct TYPE_6__ {int sh_offset; int sh_name; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef TYPE_2__ Elf32_Ehdr ;


 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static const Elf_Shdr *find_mod_section(const Elf32_Ehdr *hdr,
 const Elf_Shdr *sechdrs, const char *name)
{
 const Elf_Shdr *s, *se;
 const char *secstrs = (void *)hdr + sechdrs[hdr->e_shstrndx].sh_offset;

 for (s = sechdrs, se = sechdrs + hdr->e_shnum; s < se; s++)
  if (strcmp(name, secstrs + s->sh_name) == 0)
   return s;

 return ((void*)0);
}
