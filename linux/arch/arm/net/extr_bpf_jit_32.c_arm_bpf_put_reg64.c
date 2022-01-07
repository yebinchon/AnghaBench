
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {scalar_t__ cpu_architecture; } ;
typedef scalar_t__ s8 ;


 int ARM_FP ;
 int ARM_MOV_R (scalar_t__ const,scalar_t__ const) ;
 int ARM_STRD_I (scalar_t__ const,int ,int ) ;
 int ARM_STR_I (scalar_t__ const,int ,int ) ;
 scalar_t__ CPU_ARCH_ARMv5TE ;
 int EBPF_SCRATCH_TO_ARM_FP (scalar_t__ const) ;
 int __LINUX_ARM_ARCH__ ;
 int emit (int ,struct jit_ctx*) ;
 scalar_t__ is_stacked (scalar_t__ const) ;

__attribute__((used)) static void arm_bpf_put_reg64(const s8 *reg, const s8 *src,
         struct jit_ctx *ctx)
{
 if (is_stacked(reg[1])) {
  if (__LINUX_ARM_ARCH__ >= 6 ||
      ctx->cpu_architecture >= CPU_ARCH_ARMv5TE) {
   emit(ARM_STRD_I(src[1], ARM_FP,
           EBPF_SCRATCH_TO_ARM_FP(reg[1])), ctx);
  } else {
   emit(ARM_STR_I(src[1], ARM_FP,
           EBPF_SCRATCH_TO_ARM_FP(reg[1])), ctx);
   emit(ARM_STR_I(src[0], ARM_FP,
           EBPF_SCRATCH_TO_ARM_FP(reg[0])), ctx);
  }
 } else {
  if (reg[1] != src[1])
   emit(ARM_MOV_R(reg[1], src[1]), ctx);
  if (reg[0] != src[0])
   emit(ARM_MOV_R(reg[0], src[0]), ctx);
 }
}
