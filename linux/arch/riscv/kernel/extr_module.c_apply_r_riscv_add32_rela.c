
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct module {int dummy; } ;
typedef scalar_t__ Elf_Addr ;



__attribute__((used)) static int apply_r_riscv_add32_rela(struct module *me, u32 *location,
        Elf_Addr v)
{
 *(u32 *)location += (u32)v;
 return 0;
}
