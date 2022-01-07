
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int rv_sb_insn (int ,int ,int ,int,int) ;

__attribute__((used)) static u32 rv_bge(u8 rs1, u8 rs2, u16 imm12_1)
{
 return rv_sb_insn(imm12_1, rs2, rs1, 5, 0x63);
}
