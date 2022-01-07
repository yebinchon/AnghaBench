
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct jit_ctx {scalar_t__ cpu_architecture; TYPE_2__* prog; } ;
typedef int s8 ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int verifier_zext; } ;


 int ARM_FP ;
 int ARM_LDRD_I (int const,int ,int ) ;
 int ARM_MOV_R (int const,int const) ;
 int ARM_STRD_I (int const,int ,int ) ;
 scalar_t__ CPU_ARCH_ARMv5TE ;
 int EBPF_SCRATCH_TO_ARM_FP (int ) ;
 size_t TMP_REG_1 ;
 int __LINUX_ARM_ARCH__ ;
 int ** bpf2a32 ;
 int dst_hi ;
 int dst_lo ;
 int emit (int ,struct jit_ctx*) ;
 int emit_a32_mov_i (int ,int ,struct jit_ctx*) ;
 int emit_a32_mov_r (int ,int ,struct jit_ctx*) ;
 scalar_t__ is_stacked (int ) ;
 int src_hi ;
 int src_lo ;

__attribute__((used)) static inline void emit_a32_mov_r64(const bool is64, const s8 dst[],
      const s8 src[],
      struct jit_ctx *ctx) {
 if (!is64) {
  emit_a32_mov_r(dst_lo, src_lo, ctx);
  if (!ctx->prog->aux->verifier_zext)

   emit_a32_mov_i(dst_hi, 0, ctx);
 } else if (__LINUX_ARM_ARCH__ < 6 &&
     ctx->cpu_architecture < CPU_ARCH_ARMv5TE) {

  emit_a32_mov_r(dst_lo, src_lo, ctx);
  emit_a32_mov_r(dst_hi, src_hi, ctx);
 } else if (is_stacked(src_lo) && is_stacked(dst_lo)) {
  const u8 *tmp = bpf2a32[TMP_REG_1];

  emit(ARM_LDRD_I(tmp[1], ARM_FP, EBPF_SCRATCH_TO_ARM_FP(src_lo)), ctx);
  emit(ARM_STRD_I(tmp[1], ARM_FP, EBPF_SCRATCH_TO_ARM_FP(dst_lo)), ctx);
 } else if (is_stacked(src_lo)) {
  emit(ARM_LDRD_I(dst[1], ARM_FP, EBPF_SCRATCH_TO_ARM_FP(src_lo)), ctx);
 } else if (is_stacked(dst_lo)) {
  emit(ARM_STRD_I(src[1], ARM_FP, EBPF_SCRATCH_TO_ARM_FP(dst_lo)), ctx);
 } else {
  emit(ARM_MOV_R(dst[0], src[0]), ctx);
  emit(ARM_MOV_R(dst[1], src[1]), ctx);
 }
}
