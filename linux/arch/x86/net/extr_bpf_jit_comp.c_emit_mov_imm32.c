
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;


 int EMIT1 (int) ;
 int EMIT1_off32 (int ,scalar_t__ const) ;
 int EMIT2 (int,int ) ;
 int EMIT3_off32 (int,int,int ,scalar_t__ const) ;
 int add_1mod (int,scalar_t__) ;
 int add_1reg (int,scalar_t__) ;
 int add_2mod (int,scalar_t__,scalar_t__) ;
 int add_2reg (int,scalar_t__,scalar_t__) ;
 scalar_t__ is_ereg (scalar_t__) ;

__attribute__((used)) static void emit_mov_imm32(u8 **pprog, bool sign_propagate,
      u32 dst_reg, const u32 imm32)
{
 u8 *prog = *pprog;
 u8 b1, b2, b3;
 int cnt = 0;





 if (sign_propagate && (s32)imm32 < 0) {

  b1 = add_1mod(0x48, dst_reg);
  b2 = 0xC7;
  b3 = 0xC0;
  EMIT3_off32(b1, b2, add_1reg(b3, dst_reg), imm32);
  goto done;
 }





 if (imm32 == 0) {
  if (is_ereg(dst_reg))
   EMIT1(add_2mod(0x40, dst_reg, dst_reg));
  b2 = 0x31;
  b3 = 0xC0;
  EMIT2(b2, add_2reg(b3, dst_reg, dst_reg));
  goto done;
 }


 if (is_ereg(dst_reg))
  EMIT1(add_1mod(0x40, dst_reg));
 EMIT1_off32(add_1reg(0xB8, dst_reg), imm32);
done:
 *pprog = prog;
}
