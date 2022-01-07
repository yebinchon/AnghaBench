
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int EMIT (int const,int) ;
 int EMIT2 (int ,int ) ;
 int add_1mod (int,int) ;
 int add_1reg (int,int) ;
 int emit_mov_imm32 (int **,int,int,int const) ;
 scalar_t__ is_uimm32 (int) ;

__attribute__((used)) static void emit_mov_imm64(u8 **pprog, u32 dst_reg,
      const u32 imm32_hi, const u32 imm32_lo)
{
 u8 *prog = *pprog;
 int cnt = 0;

 if (is_uimm32(((u64)imm32_hi << 32) | (u32)imm32_lo)) {






  emit_mov_imm32(&prog, 0, dst_reg, imm32_lo);
 } else {

  EMIT2(add_1mod(0x48, dst_reg), add_1reg(0xB8, dst_reg));
  EMIT(imm32_lo, 4);
  EMIT(imm32_hi, 4);
 }

 *pprog = prog;
}
