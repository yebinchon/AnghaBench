
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct jit_ctx {int dummy; } ;
typedef scalar_t__ s8 ;


 scalar_t__ ARM_IP ;
 int ARM_MLS (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ARM_MOV_R (scalar_t__ const,scalar_t__ const) ;
 scalar_t__ ARM_R0 ;
 scalar_t__ ARM_R1 ;
 int ARM_UDIV (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ BPF_DIV ;
 int HWCAP_IDIVA ;
 size_t TMP_REG_1 ;
 scalar_t__** bpf2a32 ;
 int elf_hwcap ;
 int emit (int ,struct jit_ctx*) ;
 int emit_blx_r (scalar_t__,struct jit_ctx*) ;
 int emit_mov_i (scalar_t__,int ,struct jit_ctx*) ;
 scalar_t__ jit_mod32 ;
 scalar_t__ jit_udiv32 ;

__attribute__((used)) static inline void emit_udivmod(u8 rd, u8 rm, u8 rn, struct jit_ctx *ctx, u8 op)
{
 const s8 *tmp = bpf2a32[TMP_REG_1];
 if (rn != ARM_R1) {
  emit(ARM_MOV_R(tmp[0], ARM_R1), ctx);
  emit(ARM_MOV_R(ARM_R1, rn), ctx);
 }
 if (rm != ARM_R0) {
  emit(ARM_MOV_R(tmp[1], ARM_R0), ctx);
  emit(ARM_MOV_R(ARM_R0, rm), ctx);
 }


 emit_mov_i(ARM_IP, op == BPF_DIV ?
     (u32)jit_udiv32 : (u32)jit_mod32, ctx);
 emit_blx_r(ARM_IP, ctx);


 if (rd != ARM_R0)
  emit(ARM_MOV_R(rd, ARM_R0), ctx);


 if (rn != ARM_R1)
  emit(ARM_MOV_R(ARM_R1, tmp[0]), ctx);
 if (rm != ARM_R0)
  emit(ARM_MOV_R(ARM_R0, tmp[1]), ctx);
}
