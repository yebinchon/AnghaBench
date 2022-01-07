
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int dummy; } ;
typedef int Elf_Addr ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int apply_r_mips_64(struct module *me, u32 *location,
      u32 base, Elf_Addr v, bool rela)
{
 if (WARN_ON(!rela))
  return -EINVAL;

 *(Elf_Addr *)location = v;

 return 0;
}
