
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct jit_ctx {int tmp_1_used; } ;


 unsigned int G0 ;
 int IMMED ;
 int OR ;
 int RD (unsigned int) ;
 int RS1 (unsigned int) ;
 int RS2 (unsigned int) ;
 int S13 (int) ;
 int SETHI (unsigned long,unsigned int) ;
 int SLLX ;
 int SRLX ;
 size_t TMP_REG_1 ;
 int XOR ;
 int analyze_64bit_constant (int,int,int*,int*,int*) ;
 unsigned int* bpf2sparc ;
 scalar_t__ const64_is_2insns (int,int) ;
 void* create_simple_focus_bits (int,int,int,int) ;
 int emit (int,struct jit_ctx*) ;
 int emit_alu_K (int ,unsigned int,int,struct jit_ctx*) ;
 void emit_loadimm32 (int,unsigned int,struct jit_ctx*) ;
 void emit_loadimm_sext (int,unsigned int,struct jit_ctx*) ;
 scalar_t__ is_sethi (unsigned long) ;
 scalar_t__ is_simm13 (int) ;
 int sparc_emit_set_const64_quick2 (int,int,unsigned int,int,struct jit_ctx*) ;

__attribute__((used)) static void emit_loadimm64(u64 K, unsigned int dest, struct jit_ctx *ctx)
{
 int all_bits_between_are_set, lowest_bit_set, highest_bit_set;
 unsigned int tmp = bpf2sparc[TMP_REG_1];
 u32 low_bits = (K & 0xffffffff);
 u32 high_bits = (K >> 32);




 if (high_bits == 0xffffffff && (low_bits & 0x80000000))
  return emit_loadimm_sext(K, dest, ctx);
 if (high_bits == 0x00000000)
  return emit_loadimm32(K, dest, ctx);

 analyze_64bit_constant(high_bits, low_bits, &highest_bit_set,
          &lowest_bit_set, &all_bits_between_are_set);
 if (((highest_bit_set == 63 || lowest_bit_set == 0) &&
      all_bits_between_are_set != 0) ||
     ((highest_bit_set - lowest_bit_set) < 12)) {
  int shift = lowest_bit_set;
  long the_const = -1;

  if ((highest_bit_set != 63 && lowest_bit_set != 0) ||
      all_bits_between_are_set == 0) {
   the_const =
    create_simple_focus_bits(high_bits, low_bits,
        lowest_bit_set, 0);
  } else if (lowest_bit_set == 0)
   shift = -(63 - highest_bit_set);

  emit(OR | IMMED | RS1(G0) | S13(the_const) | RD(dest), ctx);
  if (shift > 0)
   emit_alu_K(SLLX, dest, shift, ctx);
  else if (shift < 0)
   emit_alu_K(SRLX, dest, -shift, ctx);

  return;
 }







 if ((highest_bit_set - lowest_bit_set) < 21) {
  unsigned long focus_bits =
   create_simple_focus_bits(high_bits, low_bits,
       lowest_bit_set, 10);

  emit(SETHI(focus_bits, dest), ctx);




  if (lowest_bit_set < 10)
   emit_alu_K(SRLX, dest, 10 - lowest_bit_set, ctx);
  else if (lowest_bit_set > 10)
   emit_alu_K(SLLX, dest, lowest_bit_set - 10, ctx);
  return;
 }


 if (low_bits == 0) {
  emit_loadimm32(high_bits, dest, ctx);
  emit_alu_K(SLLX, dest, 32, ctx);
  return;
 }




 if (const64_is_2insns((~high_bits) & 0xffffffff,
         (~low_bits) & 0xfffffc00)) {



  unsigned long trailing_bits = low_bits & 0x3ff;

  if ((((~high_bits) & 0xffffffff) == 0 &&
       ((~low_bits) & 0x80000000) == 0) ||
      (((~high_bits) & 0xffffffff) == 0xffffffff &&
       ((~low_bits) & 0x80000000) != 0)) {
   unsigned long fast_int = (~low_bits & 0xffffffff);

   if ((is_sethi(fast_int) &&
        (~high_bits & 0xffffffff) == 0)) {
    emit(SETHI(fast_int, dest), ctx);
   } else if (is_simm13(fast_int)) {
    emit(OR | IMMED | RS1(G0) | S13(fast_int) | RD(dest), ctx);
   } else {
    emit_loadimm64(fast_int, dest, ctx);
   }
  } else {
   u64 n = ((~low_bits) & 0xfffffc00) |
    (((unsigned long)((~high_bits) & 0xffffffff))<<32);
   emit_loadimm64(n, dest, ctx);
  }

  low_bits = -0x400 | trailing_bits;

  emit(XOR | IMMED | RS1(dest) | S13(low_bits) | RD(dest), ctx);
  return;
 }





 if ((highest_bit_set - lowest_bit_set) < 32) {
  unsigned long focus_bits =
   create_simple_focus_bits(high_bits, low_bits,
       lowest_bit_set, 0);




  sparc_emit_set_const64_quick2(focus_bits, 0, dest,
           lowest_bit_set, ctx);
  return;
 }






 if (is_simm13(low_bits) && ((int)low_bits > 0)) {
  sparc_emit_set_const64_quick2(high_bits, low_bits,
           dest, 32, ctx);
  return;
 }


 ctx->tmp_1_used = 1;

 emit_loadimm32(high_bits, tmp, ctx);
 emit_loadimm32(low_bits, dest, ctx);
 emit_alu_K(SLLX, tmp, 32, ctx);
 emit(OR | RS1(dest) | RS2(tmp) | RD(dest), ctx);
}
