
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int rv_uj_insn (int ,int ,int) ;

__attribute__((used)) static u32 rv_jal(u8 rd, u32 imm20_1)
{
 return rv_uj_insn(imm20_1, rd, 0x6f);
}
