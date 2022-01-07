
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {scalar_t__ cpu_architecture; } ;
typedef int s8 ;


 int ARM_FP ;
 int ARM_LDRD_I (int const,int ,int ) ;
 int ARM_LDR_I (int const,int ,int ) ;
 scalar_t__ CPU_ARCH_ARMv5TE ;
 int EBPF_SCRATCH_TO_ARM_FP (int const) ;
 int __LINUX_ARM_ARCH__ ;
 int emit (int ,struct jit_ctx*) ;
 scalar_t__ is_stacked (int const) ;

__attribute__((used)) static const s8 *arm_bpf_get_reg64(const s8 *reg, const s8 *tmp,
       struct jit_ctx *ctx)
{
 if (is_stacked(reg[1])) {
  if (__LINUX_ARM_ARCH__ >= 6 ||
      ctx->cpu_architecture >= CPU_ARCH_ARMv5TE) {
   emit(ARM_LDRD_I(tmp[1], ARM_FP,
     EBPF_SCRATCH_TO_ARM_FP(reg[1])), ctx);
  } else {
   emit(ARM_LDR_I(tmp[1], ARM_FP,
           EBPF_SCRATCH_TO_ARM_FP(reg[1])), ctx);
   emit(ARM_LDR_I(tmp[0], ARM_FP,
           EBPF_SCRATCH_TO_ARM_FP(reg[0])), ctx);
  }
  reg = tmp;
 }
 return reg;
}
