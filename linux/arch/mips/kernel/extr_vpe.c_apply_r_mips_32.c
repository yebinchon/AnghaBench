
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct module {int dummy; } ;
typedef scalar_t__ Elf32_Addr ;



__attribute__((used)) static int apply_r_mips_32(struct module *me, uint32_t *location,
      Elf32_Addr v)
{
 *location += v;

 return 0;
}
