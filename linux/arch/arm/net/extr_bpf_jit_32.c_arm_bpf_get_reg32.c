
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;
typedef int s8 ;


 int ARM_FP ;
 int ARM_LDR_I (int ,int ,int ) ;
 int EBPF_SCRATCH_TO_ARM_FP (int ) ;
 int emit (int ,struct jit_ctx*) ;
 scalar_t__ is_stacked (int ) ;

__attribute__((used)) static s8 arm_bpf_get_reg32(s8 reg, s8 tmp, struct jit_ctx *ctx)
{
 if (is_stacked(reg)) {
  emit(ARM_LDR_I(tmp, ARM_FP, EBPF_SCRATCH_TO_ARM_FP(reg)), ctx);
  reg = tmp;
 }
 return reg;
}
