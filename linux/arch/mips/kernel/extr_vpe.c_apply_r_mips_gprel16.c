
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct module {int dummy; } ;
typedef scalar_t__ Elf32_Addr ;


 int ENOEXEC ;
 int gp_addr ;
 int gp_offs ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int apply_r_mips_gprel16(struct module *me, uint32_t *location,
    Elf32_Addr v)
{
 int rel;

 if (!(*location & 0xffff)) {
  rel = (int)v - gp_addr;
 } else {


  rel = (int)(short)((int)v + gp_offs +
        (int)(short)(*location & 0xffff) - gp_addr);
 }

 if ((rel > 32768) || (rel < -32768)) {
  pr_debug("VPE loader: apply_r_mips_gprel16: relative address 0x%x out of range of gp register\n",
    rel);
  return -ENOEXEC;
 }

 *location = (*location & 0xffff0000) | (rel & 0xffff);

 return 0;
}
