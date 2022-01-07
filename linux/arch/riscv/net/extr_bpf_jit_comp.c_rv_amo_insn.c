
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int rv_r_insn (int,int,int,int,int,int) ;

__attribute__((used)) static u32 rv_amo_insn(u8 funct5, u8 aq, u8 rl, u8 rs2, u8 rs1,
         u8 funct3, u8 rd, u8 opcode)
{
 u8 funct7 = (funct5 << 2) | (aq << 1) | rl;

 return rv_r_insn(funct7, rs2, rs1, funct3, rd, opcode);
}
