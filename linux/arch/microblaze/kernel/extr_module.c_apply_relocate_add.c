
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct module {int name; } ;
typedef scalar_t__ location ;
struct TYPE_7__ {int r_offset; unsigned long r_addend; int r_info; } ;
struct TYPE_6__ {size_t sh_info; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_5__ {unsigned long st_value; } ;
typedef TYPE_1__ Elf32_Sym ;
typedef TYPE_2__ Elf32_Shdr ;
typedef TYPE_3__ Elf32_Rela ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ENOEXEC ;






 int pr_debug (char*,...) ;
 int pr_err (char*,int ,int) ;

int apply_relocate_add(Elf32_Shdr *sechdrs, const char *strtab,
 unsigned int symindex, unsigned int relsec, struct module *module)
{

 unsigned int i;
 Elf32_Rela *rela = (void *)sechdrs[relsec].sh_addr;
 Elf32_Sym *sym;
 unsigned long int *location;
 unsigned long int value;




 pr_debug("Applying add relocation section %u to %u\n",
  relsec, sechdrs[relsec].sh_info);

 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rela); i++) {

  location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr +
    rela[i].r_offset;
  sym = (Elf32_Sym *)sechdrs[symindex].sh_addr +
   ELF32_R_SYM(rela[i].r_info);
  value = sym->st_value + rela[i].r_addend;

  switch (ELF32_R_TYPE(rela[i].r_info)) {
  case 133:







   *location = value;

   break;

  case 131:






   location[0] = (location[0] & 0xFFFF0000) |
     (value >> 16);
   location[1] = (location[1] & 0xFFFF0000) |
     (value & 0xFFFF);




   break;

  case 129:





   value -= (unsigned long int)(location) + 4;
   location[0] = (location[0] & 0xFFFF0000) |
     (value >> 16);
   location[1] = (location[1] & 0xFFFF0000) |
     (value & 0xFFFF);
   pr_debug("R_MICROBLAZE_64_PCREL (%08lx)\n",
    value);
   break;

  case 132:
   pr_debug("R_MICROBLAZE_32_PCREL_LO\n");
   break;

  case 130:
   pr_debug("R_MICROBLAZE_64_NONE\n");
   break;

  case 128:
   pr_debug("R_MICROBLAZE_NONE\n");
   break;

  default:
   pr_err("module %s: Unknown relocation: %u\n",
    module->name,
    ELF32_R_TYPE(rela[i].r_info));
   return -ENOEXEC;
  }
 }
 return 0;
}
