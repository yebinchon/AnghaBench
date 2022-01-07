
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;
typedef scalar_t__ s8 ;


 int ARM_FP ;
 int ARM_MOV_R (scalar_t__,scalar_t__) ;
 int ARM_STR_I (scalar_t__,int ,int ) ;
 int EBPF_SCRATCH_TO_ARM_FP (scalar_t__) ;
 int emit (int ,struct jit_ctx*) ;
 scalar_t__ is_stacked (scalar_t__) ;

__attribute__((used)) static void arm_bpf_put_reg32(s8 reg, s8 src, struct jit_ctx *ctx)
{
 if (is_stacked(reg))
  emit(ARM_STR_I(src, ARM_FP, EBPF_SCRATCH_TO_ARM_FP(reg)), ctx);
 else if (reg != src)
  emit(ARM_MOV_R(reg, src), ctx);
}
