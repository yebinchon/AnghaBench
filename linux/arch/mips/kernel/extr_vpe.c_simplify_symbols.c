
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_5__ {unsigned long sh_addr; int sh_size; int sh_name; } ;
struct TYPE_4__ {int st_shndx; int st_value; int st_name; } ;
typedef TYPE_1__ Elf_Sym ;
typedef TYPE_2__ Elf_Shdr ;






 int pr_debug (char*,char const*,int) ;
 int save_gp_address (unsigned long,unsigned long) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void simplify_symbols(Elf_Shdr *sechdrs,
       unsigned int symindex,
       const char *strtab,
       const char *secstrings,
       unsigned int nsecs, struct module *mod)
{
 Elf_Sym *sym = (void *)sechdrs[symindex].sh_addr;
 unsigned long secbase, bssbase = 0;
 unsigned int i, n = sechdrs[symindex].sh_size / sizeof(Elf_Sym);
 int size;


 for (i = 0; i < nsecs; i++) {
  if (strncmp(secstrings + sechdrs[i].sh_name, ".bss", 4) == 0) {
   bssbase = sechdrs[i].sh_addr;
   break;
  }
 }

 for (i = 1; i < n; i++) {
  switch (sym[i].st_shndx) {
  case 130:




   size = sym[i].st_value;
   sym[i].st_value = bssbase;

   bssbase += size;
   break;

  case 131:

   break;

  case 128:

   break;

  case 129:
   pr_debug("simplify_symbols: ignoring SHN_MIPS_SCOMMON symbol <%s> st_shndx %d\n",
     strtab + sym[i].st_name, sym[i].st_shndx);

   break;

  default:
   secbase = sechdrs[sym[i].st_shndx].sh_addr;

   if (strncmp(strtab + sym[i].st_name, "_gp", 3) == 0)
    save_gp_address(secbase, sym[i].st_value);

   sym[i].st_value += secbase;
   break;
  }
 }
}
