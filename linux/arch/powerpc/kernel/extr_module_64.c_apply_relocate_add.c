
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef unsigned long u32 ;
struct TYPE_11__ {int toc_fixed; } ;
struct module {int name; TYPE_1__ arch; } ;
struct TYPE_14__ {int r_offset; unsigned long r_addend; int r_info; } ;
struct TYPE_13__ {size_t sh_info; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_12__ {unsigned long st_value; int st_name; int st_shndx; } ;
typedef TYPE_2__ Elf64_Sym ;
typedef TYPE_3__ Elf64_Shdr ;
typedef TYPE_4__ Elf64_Rela ;


 int ELF64_R_SYM (int ) ;
 int ELF64_R_TYPE (int ) ;
 int ENOENT ;
 int ENOEXEC ;
 int PPC_HA (unsigned long) ;
 int PPC_INST_ADD ;
 int PPC_INST_ADDI ;
 int PPC_INST_ADDIS ;
 int PPC_INST_LD ;
 int PPC_LO (unsigned long) ;
 int R12 ;
 int R2 ;
 int SHN_LIVEPATCH ;
 int SHN_UNDEF ;
 int __PPC_RA (int ) ;
 int __PPC_RB (int ) ;
 int __PPC_RT (int ) ;
 TYPE_2__* find_dot_toc (TYPE_3__*,char const*,unsigned int) ;
 unsigned long local_entry_offset (TYPE_2__*) ;
 unsigned long my_r2 (TYPE_3__*,struct module*) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int ,unsigned long) ;
 int restore_r2 (char const*,unsigned long*,struct module*) ;
 int squash_toc_save_inst (char const*,unsigned long) ;
 unsigned long stub_for_addr (TYPE_3__*,unsigned long,struct module*) ;

int apply_relocate_add(Elf64_Shdr *sechdrs,
         const char *strtab,
         unsigned int symindex,
         unsigned int relsec,
         struct module *me)
{
 unsigned int i;
 Elf64_Rela *rela = (void *)sechdrs[relsec].sh_addr;
 Elf64_Sym *sym;
 unsigned long *location;
 unsigned long value;

 pr_debug("Applying ADD relocate section %u to %u\n", relsec,
        sechdrs[relsec].sh_info);


 if (!me->arch.toc_fixed) {
  sym = find_dot_toc(sechdrs, strtab, symindex);


  if (sym)
   sym->st_value = my_r2(sechdrs, me);
  me->arch.toc_fixed = 1;
 }

 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rela); i++) {

  location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
   + rela[i].r_offset;

  sym = (Elf64_Sym *)sechdrs[symindex].sh_addr
   + ELF64_R_SYM(rela[i].r_info);

  pr_debug("RELOC at %p: %li-type as %s (0x%lx) + %li\n",
         location, (long)ELF64_R_TYPE(rela[i].r_info),
         strtab + sym->st_name, (unsigned long)sym->st_value,
         (long)rela[i].r_addend);


  value = sym->st_value + rela[i].r_addend;

  switch (ELF64_R_TYPE(rela[i].r_info)) {
  case 142:

   *(u32 *)location = value;
   break;

  case 141:

   *(unsigned long *)location = value;
   break;

  case 135:
   *(unsigned long *)location = my_r2(sechdrs, me);
   break;

  case 134:

   value -= my_r2(sechdrs, me);
   if (value + 0x8000 > 0xffff) {
    pr_err("%s: bad TOC16 relocation (0x%lx)\n",
           me->name, value);
    return -ENOEXEC;
   }
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xffff)
    | (value & 0xffff);
   break;

  case 131:

   value -= my_r2(sechdrs, me);
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xffff)
    | (value & 0xffff);
   break;

  case 133:

   value -= my_r2(sechdrs, me);
   if ((value & 3) != 0 || value + 0x8000 > 0xffff) {
    pr_err("%s: bad TOC16_DS relocation (0x%lx)\n",
           me->name, value);
    return -ENOEXEC;
   }
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xfffc)
    | (value & 0xfffc);
   break;

  case 130:

   value -= my_r2(sechdrs, me);
   if ((value & 3) != 0) {
    pr_err("%s: bad TOC16_LO_DS relocation (0x%lx)\n",
           me->name, value);
    return -ENOEXEC;
   }
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xfffc)
    | (value & 0xfffc);
   break;

  case 132:

   value -= my_r2(sechdrs, me);
   value = ((value + 0x8000) >> 16);
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xffff)
    | (value & 0xffff);
   break;

  case 128:

   if (sym->st_shndx == SHN_UNDEF ||
       sym->st_shndx == SHN_LIVEPATCH) {

    value = stub_for_addr(sechdrs, value, me);
    if (!value)
     return -ENOENT;
    if (!restore_r2(strtab + sym->st_name,
       (u32 *)location + 1, me))
     return -ENOEXEC;

    squash_toc_save_inst(strtab + sym->st_name, value);
   } else
    value += local_entry_offset(sym);


   value -= (unsigned long)location;
   if (value + 0x2000000 > 0x3ffffff || (value & 3) != 0){
    pr_err("%s: REL24 %li out of range!\n",
           me->name, (long int)value);
    return -ENOEXEC;
   }


   *(uint32_t *)location
    = (*(uint32_t *)location & ~0x03fffffc)
    | (value & 0x03fffffc);
   break;

  case 136:

   *location = value - (unsigned long)location;
   break;

  case 137:


   value -= (unsigned long)location;
   if (value + 0x80000000 > 0xffffffff) {
    pr_err("%s: REL32 %li out of range!\n",
           me->name, (long int)value);
    return -ENOEXEC;
   }
   *(u32 *)location = value;
   break;

  case 129:





   break;

  case 140:




   value = my_r2(sechdrs, me) - (unsigned long)location;
   if (value + 0x80008000 > 0xffffffff)
    break;





   if ((((uint32_t *)location)[0] & ~0xfffc) !=
       (PPC_INST_LD | __PPC_RT(R2) | __PPC_RA(R12)))
    break;
   if (((uint32_t *)location)[1] !=
       (PPC_INST_ADD | __PPC_RT(R2) | __PPC_RA(R2) | __PPC_RB(R12)))
    break;





   ((uint32_t *)location)[0] = PPC_INST_ADDIS | __PPC_RT(R2) |
          __PPC_RA(R12) | PPC_HA(value);
   ((uint32_t *)location)[1] = PPC_INST_ADDI | __PPC_RT(R2) |
          __PPC_RA(R2) | PPC_LO(value);
   break;

  case 139:

   value -= (unsigned long)location;
   value = ((value + 0x8000) >> 16);
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xffff)
    | (value & 0xffff);
   break;

  case 138:

   value -= (unsigned long)location;
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xffff)
    | (value & 0xffff);
   break;

  default:
   pr_err("%s: Unknown ADD relocation: %lu\n",
          me->name,
          (unsigned long)ELF64_R_TYPE(rela[i].r_info));
   return -ENOEXEC;
  }
 }

 return 0;
}
