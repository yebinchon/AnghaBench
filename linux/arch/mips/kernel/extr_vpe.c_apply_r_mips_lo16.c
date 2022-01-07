
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
struct module {int dummy; } ;
struct mips_hi16 {scalar_t__ value; unsigned long* addr; struct mips_hi16* next; } ;
typedef scalar_t__ Elf32_Addr ;


 int ENOEXEC ;
 int kfree (struct mips_hi16*) ;
 struct mips_hi16* mips_hi16_list ;
 int pr_debug (char*) ;

__attribute__((used)) static int apply_r_mips_lo16(struct module *me, uint32_t *location,
        Elf32_Addr v)
{
 unsigned long insnlo = *location;
 Elf32_Addr val, vallo;
 struct mips_hi16 *l, *next;


 vallo = ((insnlo & 0xffff) ^ 0x8000) - 0x8000;

 if (mips_hi16_list != ((void*)0)) {

  l = mips_hi16_list;
  while (l != ((void*)0)) {
   unsigned long insn;




   if (v != l->value) {
    pr_debug("VPE loader: apply_r_mips_lo16/hi16: inconsistent value information\n");
    goto out_free;
   }







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

  mips_hi16_list = ((void*)0);
 }




 val = v + vallo;
 insnlo = (insnlo & ~0xffff) | (val & 0xffff);
 *location = insnlo;

 return 0;

out_free:
 while (l != ((void*)0)) {
  next = l->next;
  kfree(l);
  l = next;
 }
 mips_hi16_list = ((void*)0);

 return -ENOEXEC;
}
