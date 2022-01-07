
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct module {int name; } ;
struct TYPE_7__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_6__ {int sh_size; size_t sh_info; scalar_t__ sh_addr; } ;
struct TYPE_5__ {int st_value; } ;
typedef TYPE_1__ Elf32_Sym ;
typedef TYPE_2__ Elf32_Shdr ;
typedef TYPE_3__ Elf32_Rela ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ENOEXEC ;






 int jsri_2_lrw_jsr (int*) ;
 int pr_err (char*,int ,int) ;

int apply_relocate_add(Elf32_Shdr *sechdrs, const char *strtab,
  unsigned int symindex, unsigned int relsec, struct module *me)
{
 unsigned int i;
 Elf32_Rela *rel = (void *) sechdrs[relsec].sh_addr;
 Elf32_Sym *sym;
 uint32_t *location;
 short *temp;

 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rel); i++) {

  location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
       + rel[i].r_offset;
  sym = (Elf32_Sym *)sechdrs[symindex].sh_addr
      + ELF32_R_SYM(rel[i].r_info);

  switch (ELF32_R_TYPE(rel[i].r_info)) {
  case 133:

   *location = rel[i].r_addend + sym->st_value;
   break;
  case 130:

   *location = rel[i].r_addend + sym->st_value
       - (uint32_t)location;
   break;
  case 129:
   break;
  case 128:
   jsri_2_lrw_jsr(location);
   break;
  case 132:
   temp = ((short *)location) + 1;
   *temp = (short)
    ((rel[i].r_addend + sym->st_value) >> 16);
   break;
  case 131:
   temp = ((short *)location) + 1;
   *temp = (short)
    ((rel[i].r_addend + sym->st_value) & 0xffff);
   break;
  default:
   pr_err("module %s: Unknown relocation: %u\n",
    me->name, ELF32_R_TYPE(rel[i].r_info));
   return -ENOEXEC;
  }
 }
 return 0;
}
