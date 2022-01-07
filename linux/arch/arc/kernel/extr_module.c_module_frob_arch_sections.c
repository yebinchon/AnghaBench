
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* secstr; int * unw_info; scalar_t__ unw_sec_idx; } ;
struct module {TYPE_1__ arch; } ;
typedef int Elf_Shdr ;
typedef int Elf_Ehdr ;



int module_frob_arch_sections(Elf_Ehdr *hdr, Elf_Shdr *sechdrs,
         char *secstr, struct module *mod)
{




 mod->arch.secstr = secstr;
 return 0;
}
