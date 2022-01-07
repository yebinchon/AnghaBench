
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int rv_r_insn (int,int ,int ,int,int ,int) ;

__attribute__((used)) static u32 rv_divuw(u8 rd, u8 rs1, u8 rs2)
{
 return rv_r_insn(1, rs2, rs1, 5, rd, 0x3b);
}
