
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct module {int name; } ;
struct TYPE_7__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_6__ {size_t sh_info; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_5__ {int st_value; } ;
typedef TYPE_1__ Elf32_Sym ;
typedef TYPE_2__ Elf32_Shdr ;
typedef TYPE_3__ Elf32_Rela ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;




 int pr_debug (char*,unsigned int,size_t) ;
 int pr_err (char*,int ,int) ;

int apply_relocate_add(Elf32_Shdr *sechdrs,
         const char *strtab,
         unsigned int symindex,
         unsigned int relsec,
         struct module *me)
{
 unsigned int i;
 Elf32_Rela *rel = (void *)sechdrs[relsec].sh_addr;
 Elf32_Sym *sym;
 uint32_t *location;
 uint32_t value;

 pr_debug("Applying relocate section %u to %u\n", relsec,
   sechdrs[relsec].sh_info);
 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rel); i++) {

  location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
   + rel[i].r_offset;



  sym = (Elf32_Sym *)sechdrs[symindex].sh_addr
   + ELF32_R_SYM(rel[i].r_info);
  value = sym->st_value + rel[i].r_addend;

  switch (ELF32_R_TYPE(rel[i].r_info)) {
  case 131:
   *location = value;
   break;
  case 130:
   *((uint16_t *)location + 1) = value;
   break;
  case 129:
   *((uint16_t *)location + 1) = value >> 16;
   break;
  case 128:
   value -= (uint32_t)location;
   value >>= 2;
   value &= 0x03ffffff;
   value |= *location & 0xfc000000;
   *location = value;
   break;
  default:
   pr_err("module %s: Unknown relocation: %u\n",
          me->name, ELF32_R_TYPE(rel[i].r_info));
   break;
  }
 }

 return 0;
}
