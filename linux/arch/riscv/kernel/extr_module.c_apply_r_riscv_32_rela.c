
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct module {int name; } ;
typedef scalar_t__ Elf_Addr ;


 int EINVAL ;
 int pr_err (char*,int ,long long) ;

__attribute__((used)) static int apply_r_riscv_32_rela(struct module *me, u32 *location, Elf_Addr v)
{
 if (v != (u32)v) {
  pr_err("%s: value %016llx out of range for 32-bit field\n",
         me->name, (long long)v);
  return -EINVAL;
 }
 *location = v;
 return 0;
}
