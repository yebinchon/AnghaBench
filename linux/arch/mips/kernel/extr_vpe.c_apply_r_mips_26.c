
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct module {int dummy; } ;
typedef int Elf32_Addr ;


 int ENOEXEC ;
 int pr_debug (char*) ;

__attribute__((used)) static int apply_r_mips_26(struct module *me, uint32_t *location,
      Elf32_Addr v)
{
 if (v % 4) {
  pr_debug("VPE loader: apply_r_mips_26: unaligned relocation\n");
  return -ENOEXEC;
 }
 *location = (*location & ~0x03ffffff) |
  ((*location + (v >> 2)) & 0x03ffffff);
 return 0;
}
