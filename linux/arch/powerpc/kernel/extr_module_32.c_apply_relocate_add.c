
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct module {int name; } ;
struct TYPE_8__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_7__ {size_t sh_info; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_6__ {int st_value; } ;
typedef TYPE_1__ Elf32_Sym ;
typedef TYPE_2__ Elf32_Shdr ;
typedef TYPE_3__ Elf32_Rela ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ENOEXEC ;






 int do_plt_call (int*,int,TYPE_2__*,struct module*) ;
 int pr_debug (char*,int,...) ;
 int pr_err (char*,int ,int) ;

int apply_relocate_add(Elf32_Shdr *sechdrs,
         const char *strtab,
         unsigned int symindex,
         unsigned int relsec,
         struct module *module)
{
 unsigned int i;
 Elf32_Rela *rela = (void *)sechdrs[relsec].sh_addr;
 Elf32_Sym *sym;
 uint32_t *location;
 uint32_t value;

 pr_debug("Applying ADD relocate section %u to %u\n", relsec,
        sechdrs[relsec].sh_info);
 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rela); i++) {

  location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
   + rela[i].r_offset;


  sym = (Elf32_Sym *)sechdrs[symindex].sh_addr
   + ELF32_R_SYM(rela[i].r_info);

  value = sym->st_value + rela[i].r_addend;

  switch (ELF32_R_TYPE(rela[i].r_info)) {
  case 130:

   *(uint32_t *)location = value;
   break;

  case 131:

   *(uint16_t *)location = value;
   break;

  case 132:

   *(uint16_t *)location = (value >> 16);
   break;

  case 133:




   *(uint16_t *)location = (value + 0x8000) >> 16;
   break;

  case 129:
   if ((int)(value - (uint32_t)location) < -0x02000000
       || (int)(value - (uint32_t)location) >= 0x02000000)
    value = do_plt_call(location, value,
          sechdrs, module);


   pr_debug("REL24 value = %08X. location = %08X\n",
          value, (uint32_t)location);
   pr_debug("Location before: %08X.\n",
          *(uint32_t *)location);
   *(uint32_t *)location
    = (*(uint32_t *)location & ~0x03fffffc)
    | ((value - (uint32_t)location)
       & 0x03fffffc);
   pr_debug("Location after: %08X.\n",
          *(uint32_t *)location);
   pr_debug("ie. jump to %08X+%08X = %08X\n",
          *(uint32_t *)location & 0x03fffffc,
          (uint32_t)location,
          (*(uint32_t *)location & 0x03fffffc)
          + (uint32_t)location);
   break;

  case 128:

   *(uint32_t *)location = value - (uint32_t)location;
   break;

  default:
   pr_err("%s: unknown ADD relocation: %u\n",
          module->name,
          ELF32_R_TYPE(rela[i].r_info));
   return -ENOEXEC;
  }
 }

 return 0;
}
