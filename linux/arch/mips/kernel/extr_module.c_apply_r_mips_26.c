
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int name; } ;
typedef int Elf_Addr ;


 int ENOEXEC ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int apply_r_mips_26(struct module *me, u32 *location,
      u32 base, Elf_Addr v, bool rela)
{
 if (v % 4) {
  pr_err("module %s: dangerous R_MIPS_26 relocation\n",
         me->name);
  return -ENOEXEC;
 }

 if ((v & 0xf0000000) != (((unsigned long)location + 4) & 0xf0000000)) {
  pr_err("module %s: relocation overflow\n",
         me->name);
  return -ENOEXEC;
 }

 *location = (*location & ~0x03ffffff) |
      ((base + (v >> 2)) & 0x03ffffff);

 return 0;
}
