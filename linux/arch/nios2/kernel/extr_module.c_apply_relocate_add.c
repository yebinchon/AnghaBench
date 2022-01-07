
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct module {int name; } ;
typedef int int32_t ;
struct TYPE_7__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_6__ {size_t sh_info; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_5__ {int st_value; int st_name; } ;
typedef TYPE_1__ Elf32_Sym ;
typedef TYPE_2__ Elf32_Shdr ;
typedef TYPE_3__ Elf32_Rela ;
typedef int Elf32_Addr ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ENOEXEC ;







 int pr_debug (char*,int,int,...) ;
 int pr_err (char*,int ,...) ;

int apply_relocate_add(Elf32_Shdr *sechdrs, const char *strtab,
   unsigned int symindex, unsigned int relsec,
   struct module *mod)
{
 unsigned int i;
 Elf32_Rela *rela = (void *)sechdrs[relsec].sh_addr;

 pr_debug("Applying relocate section %u to %u\n", relsec,
   sechdrs[relsec].sh_info);

 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rela); i++) {

  uint32_t word;
  uint32_t *loc
   = ((void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
      + rela[i].r_offset);


  Elf32_Sym *sym
   = ((Elf32_Sym *)sechdrs[symindex].sh_addr
    + ELF32_R_SYM(rela[i].r_info));
  uint32_t v = sym->st_value + rela[i].r_addend;

  pr_debug("reltype %d 0x%x name:<%s>\n",
   ELF32_R_TYPE(rela[i].r_info),
   rela[i].r_offset, strtab + sym->st_name);

  switch (ELF32_R_TYPE(rela[i].r_info)) {
  case 129:
   break;
  case 134:
   *loc += v;
   break;
  case 128:
   v -= (uint32_t)loc + 4;
   if ((int32_t)v > 0x7fff ||
    (int32_t)v < -(int32_t)0x8000) {
    pr_err("module %s: relocation overflow\n",
     mod->name);
    return -ENOEXEC;
   }
   word = *loc;
   *loc = ((((word >> 22) << 16) | (v & 0xffff)) << 6) |
    (word & 0x3f);
   break;
  case 133:
   if (v & 3) {
    pr_err("module %s: dangerous relocation\n",
     mod->name);
    return -ENOEXEC;
   }
   if ((v >> 28) != ((uint32_t)loc >> 28)) {
    pr_err("module %s: relocation overflow\n",
     mod->name);
    return -ENOEXEC;
   }
   *loc = (*loc & 0x3f) | ((v >> 2) << 6);
   break;
  case 132:
   word = *loc;
   *loc = ((((word >> 22) << 16) |
    ((v >> 16) & 0xffff)) << 6) | (word & 0x3f);
   break;
  case 130:
   word = *loc;
   *loc = ((((word >> 22) << 16) | (v & 0xffff)) << 6) |
     (word & 0x3f);
   break;
  case 131:
   {
    Elf32_Addr word2;

    word = *loc;
    word2 = ((v >> 16) + ((v >> 15) & 1)) & 0xffff;
    *loc = ((((word >> 22) << 16) | word2) << 6) |
      (word & 0x3f);
   }
   break;

  default:
   pr_err("module %s: Unknown reloc: %u\n",
    mod->name, ELF32_R_TYPE(rela[i].r_info));
   return -ENOEXEC;
  }
 }

 return 0;
}
