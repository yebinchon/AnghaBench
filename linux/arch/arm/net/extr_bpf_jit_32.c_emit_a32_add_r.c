
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;


 int ARM_ADC_R (int const,int const,int const) ;
 int ARM_ADDS_R (int const,int const,int const) ;
 int ARM_ADD_R (int const,int const,int const) ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_a32_add_r(const u8 dst, const u8 src,
         const bool is64, const bool hi,
         struct jit_ctx *ctx) {






 if (!hi && is64)
  emit(ARM_ADDS_R(dst, dst, src), ctx);
 else if (hi && is64)
  emit(ARM_ADC_R(dst, dst, src), ctx);
 else
  emit(ARM_ADD_R(dst, dst, src), ctx);
}
