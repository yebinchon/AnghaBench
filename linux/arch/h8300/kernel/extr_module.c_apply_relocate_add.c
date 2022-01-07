
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
struct TYPE_6__ {int sh_addr; size_t sh_info; int sh_size; } ;
struct TYPE_5__ {int st_value; } ;
typedef TYPE_1__ Elf32_Sym ;
typedef int Elf32_Sword ;
typedef TYPE_2__ Elf32_Shdr ;
typedef TYPE_3__ Elf32_Rela ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ENOEXEC ;






 int pr_debug (char*,unsigned int,size_t) ;
 int pr_err (char*,int ,int) ;

int apply_relocate_add(Elf32_Shdr *sechdrs,
         const char *strtab,
         unsigned int symindex,
         unsigned int relsec,
         struct module *me)
{
 unsigned int i;
 Elf32_Rela *rela = (void *)sechdrs[relsec].sh_addr;

 pr_debug("Applying relocate section %u to %u\n", relsec,
        sechdrs[relsec].sh_info);
 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rela); i++) {

  uint32_t *loc =
   (uint32_t *)(sechdrs[sechdrs[relsec].sh_info].sh_addr
          + rela[i].r_offset);


  Elf32_Sym *sym = (Elf32_Sym *)sechdrs[symindex].sh_addr
   + ELF32_R_SYM(rela[i].r_info);
  uint32_t v = sym->st_value + rela[i].r_addend;

  switch (ELF32_R_TYPE(rela[i].r_info)) {
  case 132:
   loc = (uint32_t *)((uint32_t)loc - 1);
   *loc = (*loc & 0xff000000) | ((*loc & 0xffffff) + v);
   break;
  case 133:
   if (ELF32_R_SYM(rela[i].r_info))
    *loc += v;
   break;
  case 131:
  case 130:
   *loc += v;
   break;
  case 129:
   v -= (unsigned long)loc + 2;
   if ((Elf32_Sword)v > 0x7fff ||
       (Elf32_Sword)v < -(Elf32_Sword)0x8000)
    goto overflow;
   else
    *(unsigned short *)loc = v;
   break;
  case 128:
   v -= (unsigned long)loc + 1;
   if ((Elf32_Sword)v > 0x7f ||
       (Elf32_Sword)v < -(Elf32_Sword)0x80)
    goto overflow;
   else
    *(unsigned char *)loc = v;
   break;
  default:
   pr_err("module %s: Unknown relocation: %u\n",
          me->name, ELF32_R_TYPE(rela[i].r_info));
   return -ENOEXEC;
  }
 }
 return 0;
 overflow:
 pr_err("module %s: relocation offset overflow: %08x\n",
        me->name, rela[i].r_offset);
 return -ENOEXEC;
}
