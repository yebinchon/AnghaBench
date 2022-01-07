
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int name; } ;
typedef int s32 ;
typedef scalar_t__ Elf_Addr ;


 int CONFIG_CMODEL_MEDLOW ;
 int EINVAL ;
 scalar_t__ IS_ENABLED (int ) ;
 int pr_err (char*,int ,long long,int*) ;

__attribute__((used)) static int apply_r_riscv_hi20_rela(struct module *me, u32 *location,
       Elf_Addr v)
{
 s32 hi20;

 if (IS_ENABLED(CONFIG_CMODEL_MEDLOW)) {
  pr_err(
    "%s: target %016llx can not be addressed by the 32-bit offset from PC = %p\n",
    me->name, (long long)v, location);
  return -EINVAL;
 }

 hi20 = ((s32)v + 0x800) & 0xfffff000;
 *location = (*location & 0xfff) | hi20;
 return 0;
}
