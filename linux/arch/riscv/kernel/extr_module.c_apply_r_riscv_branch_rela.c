
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int dummy; } ;
typedef int ptrdiff_t ;
typedef scalar_t__ Elf_Addr ;



__attribute__((used)) static int apply_r_riscv_branch_rela(struct module *me, u32 *location,
         Elf_Addr v)
{
 ptrdiff_t offset = (void *)v - (void *)location;
 u32 imm12 = (offset & 0x1000) << (31 - 12);
 u32 imm11 = (offset & 0x800) >> (11 - 7);
 u32 imm10_5 = (offset & 0x7e0) << (30 - 10);
 u32 imm4_1 = (offset & 0x1e) << (11 - 4);

 *location = (*location & 0x1fff07f) | imm12 | imm11 | imm10_5 | imm4_1;
 return 0;
}
