
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int rv_u_insn (int ,int ,int) ;

__attribute__((used)) static u32 rv_lui(u8 rd, u32 imm31_12)
{
 return rv_u_insn(imm31_12, rd, 0x37);
}
