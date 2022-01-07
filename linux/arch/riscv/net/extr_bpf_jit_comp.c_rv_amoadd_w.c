
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int rv_amo_insn (int ,int ,int ,int ,int ,int,int ,int) ;

__attribute__((used)) static u32 rv_amoadd_w(u8 rd, u8 rs2, u8 rs1, u8 aq, u8 rl)
{
 return rv_amo_insn(0, aq, rl, rs2, rs1, 2, rd, 0x2f);
}
