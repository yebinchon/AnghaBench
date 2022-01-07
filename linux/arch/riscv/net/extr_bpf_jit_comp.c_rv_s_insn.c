
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u32 rv_s_insn(u16 imm11_0, u8 rs2, u8 rs1, u8 funct3, u8 opcode)
{
 u8 imm11_5 = imm11_0 >> 5, imm4_0 = imm11_0 & 0x1f;

 return (imm11_5 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) |
  (imm4_0 << 7) | opcode;
}
