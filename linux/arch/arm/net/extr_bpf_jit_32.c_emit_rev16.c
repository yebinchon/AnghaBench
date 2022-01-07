
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;
typedef int s8 ;


 int ARM_AND_I (int const,int const,int) ;
 int ARM_MOV_SI (int const,int const,int ,int) ;
 int ARM_ORR_SI (int const,int const,int const,int ,int) ;
 int ARM_REV16 (int const,int const) ;
 int SRTYPE_LSL ;
 int SRTYPE_LSR ;
 size_t TMP_REG_2 ;
 int ** bpf2a32 ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_rev16(const u8 rd, const u8 rn, struct jit_ctx *ctx)
{

 const s8 *tmp2 = bpf2a32[TMP_REG_2];

 emit(ARM_AND_I(tmp2[1], rn, 0xff), ctx);
 emit(ARM_MOV_SI(tmp2[0], rn, SRTYPE_LSR, 8), ctx);
 emit(ARM_AND_I(tmp2[0], tmp2[0], 0xff), ctx);
 emit(ARM_ORR_SI(rd, tmp2[0], tmp2[1], SRTYPE_LSL, 8), ctx);



}
