
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EMIT1 (int ) ;
 int EMIT2 (int,int ) ;
 int EMIT_mov (int ,int ) ;
 int add_2mod (int,int ,int ) ;
 int add_2reg (int,int ,int ) ;
 scalar_t__ is_ereg (int ) ;

__attribute__((used)) static void emit_mov_reg(u8 **pprog, bool is64, u32 dst_reg, u32 src_reg)
{
 u8 *prog = *pprog;
 int cnt = 0;

 if (is64) {

  EMIT_mov(dst_reg, src_reg);
 } else {

  if (is_ereg(dst_reg) || is_ereg(src_reg))
   EMIT1(add_2mod(0x40, dst_reg, src_reg));
  EMIT2(0x89, add_2reg(0xC0, dst_reg, src_reg));
 }

 *pprog = prog;
}
