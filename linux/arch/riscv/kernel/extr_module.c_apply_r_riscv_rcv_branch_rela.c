
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct module {int dummy; } ;
typedef int ptrdiff_t ;
typedef scalar_t__ Elf_Addr ;



__attribute__((used)) static int apply_r_riscv_rcv_branch_rela(struct module *me, u32 *location,
      Elf_Addr v)
{
 ptrdiff_t offset = (void *)v - (void *)location;
 u16 imm8 = (offset & 0x100) << (12 - 8);
 u16 imm7_6 = (offset & 0xc0) >> (6 - 5);
 u16 imm5 = (offset & 0x20) >> (5 - 2);
 u16 imm4_3 = (offset & 0x18) << (12 - 5);
 u16 imm2_1 = (offset & 0x6) << (12 - 10);

 *(u16 *)location = (*(u16 *)location & 0xe383) |
      imm8 | imm7_6 | imm5 | imm4_3 | imm2_1;
 return 0;
}
