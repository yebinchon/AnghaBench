
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* ftrace_trampoline; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_8__ {size_t e_shstrndx; int e_shnum; } ;
struct TYPE_7__ {int sh_offset; int sh_name; scalar_t__ sh_addr; int sh_size; } ;
typedef TYPE_2__ Elf_Shdr ;
typedef TYPE_3__ Elf_Ehdr ;


 int CONFIG_DYNAMIC_FTRACE ;
 scalar_t__ IS_ENABLED (int ) ;
 int apply_alternatives_module (void*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;

int module_finalize(const Elf_Ehdr *hdr,
      const Elf_Shdr *sechdrs,
      struct module *me)
{
 const Elf_Shdr *s, *se;
 const char *secstrs = (void *)hdr + sechdrs[hdr->e_shstrndx].sh_offset;

 for (s = sechdrs, se = sechdrs + hdr->e_shnum; s < se; s++) {
  if (strcmp(".altinstructions", secstrs + s->sh_name) == 0)
   apply_alternatives_module((void *)s->sh_addr, s->sh_size);





 }

 return 0;
}
