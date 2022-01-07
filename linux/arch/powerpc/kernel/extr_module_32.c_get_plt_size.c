
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ppc_plt_entry {int dummy; } ;
struct TYPE_6__ {unsigned int e_shnum; } ;
struct TYPE_5__ {int sh_name; scalar_t__ sh_type; int sh_offset; int sh_size; } ;
typedef TYPE_1__ Elf32_Shdr ;
typedef int Elf32_Rela ;
typedef TYPE_2__ Elf32_Ehdr ;


 scalar_t__ SHT_RELA ;
 int count_relocs (void*,int) ;
 int pr_debug (char*,void*,...) ;
 int relacmp ;
 int relaswap ;
 int sort (void*,int,int,int ,int ) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static unsigned long get_plt_size(const Elf32_Ehdr *hdr,
      const Elf32_Shdr *sechdrs,
      const char *secstrings,
      int is_init)
{
 unsigned long ret = 0;
 unsigned i;



 for (i = 1; i < hdr->e_shnum; i++) {


  if ((strstr(secstrings + sechdrs[i].sh_name, ".init") != ((void*)0))
      != is_init)
   continue;


  if (strstr(secstrings + sechdrs[i].sh_name, ".debug"))
   continue;

  if (sechdrs[i].sh_type == SHT_RELA) {
   pr_debug("Found relocations in section %u\n", i);
   pr_debug("Ptr: %p.  Number: %u\n",
          (void *)hdr + sechdrs[i].sh_offset,
          sechdrs[i].sh_size / sizeof(Elf32_Rela));






   sort((void *)hdr + sechdrs[i].sh_offset,
        sechdrs[i].sh_size / sizeof(Elf32_Rela),
        sizeof(Elf32_Rela), relacmp, relaswap);

   ret += count_relocs((void *)hdr
          + sechdrs[i].sh_offset,
          sechdrs[i].sh_size
          / sizeof(Elf32_Rela))
    * sizeof(struct ppc_plt_entry);
  }
 }

 return ret;
}
