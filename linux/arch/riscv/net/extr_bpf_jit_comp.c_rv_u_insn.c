
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 rv_u_insn(u32 imm31_12, u8 rd, u8 opcode)
{
 return (imm31_12 << 12) | (rd << 7) | opcode;
}
