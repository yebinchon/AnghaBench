
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct module {int dummy; } ;
typedef scalar_t__ Elf32_Addr ;


 int ENOEXEC ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int apply_r_mips_pc16(struct module *me, uint32_t *location,
        Elf32_Addr v)
{
 int rel;
 rel = (((unsigned int)v - (unsigned int)location));
 rel >>= 2;
 rel -= 1;

 if ((rel > 32768) || (rel < -32768)) {
  pr_debug("VPE loader: apply_r_mips_pc16: relative address out of range 0x%x\n",
    rel);
  return -ENOEXEC;
 }

 *location = (*location & 0xffff0000) | (rel & 0xffff);

 return 0;
}
