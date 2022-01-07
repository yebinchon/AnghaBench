
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct mips_hi16* r_mips_hi16_list; } ;
struct module {int name; TYPE_1__ arch; } ;
struct mips_hi16 {int value; unsigned long* addr; struct mips_hi16* next; } ;
typedef int Elf_Addr ;


 int ENOEXEC ;
 int free_relocation_chain (struct mips_hi16*) ;
 int kfree (struct mips_hi16*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int apply_r_mips_lo16(struct module *me, u32 *location,
        u32 base, Elf_Addr v, bool rela)
{
 unsigned long insnlo = base;
 struct mips_hi16 *l;
 Elf_Addr val, vallo;

 if (rela) {
  *location = (*location & 0xffff0000) | (v & 0xffff);
  return 0;
 }


 vallo = ((insnlo & 0xffff) ^ 0x8000) - 0x8000;

 if (me->arch.r_mips_hi16_list != ((void*)0)) {
  l = me->arch.r_mips_hi16_list;
  while (l != ((void*)0)) {
   struct mips_hi16 *next;
   unsigned long insn;




   if (v != l->value)
    goto out_danger;







   insn = *l->addr;
   val = ((insn & 0xffff) << 16) + vallo;
   val += v;





   val = ((val >> 16) + ((val & 0x8000) != 0)) & 0xffff;

   insn = (insn & ~0xffff) | val;
   *l->addr = insn;

   next = l->next;
   kfree(l);
   l = next;
  }

  me->arch.r_mips_hi16_list = ((void*)0);
 }




 val = v + vallo;
 insnlo = (insnlo & ~0xffff) | (val & 0xffff);
 *location = insnlo;

 return 0;

out_danger:
 free_relocation_chain(l);
 me->arch.r_mips_hi16_list = ((void*)0);

 pr_err("module %s: dangerous R_MIPS_LO16 relocation\n", me->name);

 return -ENOEXEC;
}
