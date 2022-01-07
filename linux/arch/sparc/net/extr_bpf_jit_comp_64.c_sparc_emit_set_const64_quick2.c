
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;


 int IMMED ;
 int OR ;
 int RD (unsigned int) ;
 int RS1 (unsigned int) ;
 int S13 (unsigned long) ;
 int SLLX ;
 int emit (int,struct jit_ctx*) ;
 int emit_alu_K (int ,unsigned int,int,struct jit_ctx*) ;
 int emit_loadimm32 (unsigned long,unsigned int,struct jit_ctx*) ;

__attribute__((used)) static void sparc_emit_set_const64_quick2(unsigned long high_bits,
       unsigned long low_imm,
       unsigned int dest,
       int shift_count, struct jit_ctx *ctx)
{
 emit_loadimm32(high_bits, dest, ctx);


 emit_alu_K(SLLX, dest, shift_count, ctx);




 if (low_imm != 0)
  emit(OR | IMMED | RS1(dest) | S13(low_imm) | RD(dest), ctx);
}
