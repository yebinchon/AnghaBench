
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;


 int ARM_BX (int ) ;
 int ARM_MOV_R (int ,int ) ;
 int ARM_PC ;
 int HWCAP_THUMB ;
 int elf_hwcap ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static void emit_bx_r(u8 tgt_reg, struct jit_ctx *ctx)
{
 if (elf_hwcap & HWCAP_THUMB)
  emit(ARM_BX(tgt_reg), ctx);
 else
  emit(ARM_MOV_R(ARM_PC, tgt_reg), ctx);
}
