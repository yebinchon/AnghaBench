
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct module {int name; } ;
typedef int Elf_Addr ;


 long BIT (unsigned int) ;
 int ENOEXEC ;
 unsigned long GENMASK (unsigned int,int ) ;
 int pr_err (char*,int ,...) ;

__attribute__((used)) static int apply_r_mips_pc(struct module *me, u32 *location, u32 base,
      Elf_Addr v, unsigned int bits)
{
 unsigned long mask = GENMASK(bits - 1, 0);
 unsigned long se_bits;
 long offset;

 if (v % 4) {
  pr_err("module %s: dangerous R_MIPS_PC%u relocation\n",
         me->name, bits);
  return -ENOEXEC;
 }


 offset = base & mask;
 offset |= (offset & BIT(bits - 1)) ? ~mask : 0;

 offset += ((long)v - (long)location) >> 2;


 se_bits = (offset & BIT(bits - 1)) ? ~0ul : 0;
 if ((offset & ~mask) != (se_bits & ~mask)) {
  pr_err("module %s: relocation overflow\n", me->name);
  return -ENOEXEC;
 }

 *location = (*location & ~mask) | (offset & mask);

 return 0;
}
