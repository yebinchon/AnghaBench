
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int dummy; } ;
typedef int ptrdiff_t ;
typedef scalar_t__ Elf_Addr ;



__attribute__((used)) static int apply_r_riscv_jal_rela(struct module *me, u32 *location,
      Elf_Addr v)
{
 ptrdiff_t offset = (void *)v - (void *)location;
 u32 imm20 = (offset & 0x100000) << (31 - 20);
 u32 imm19_12 = (offset & 0xff000);
 u32 imm11 = (offset & 0x800) << (20 - 11);
 u32 imm10_1 = (offset & 0x7fe) << (30 - 10);

 *location = (*location & 0xfff) | imm20 | imm19_12 | imm11 | imm10_1;
 return 0;
}
