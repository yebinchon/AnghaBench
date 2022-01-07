
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* m32; scalar_t__ m64; } ;
struct fp_ext {int exp; int lowmant; TYPE_1__ mant; } ;


 int FPSR_EXC_INEX2 ;
 int FPSR_EXC_OVFL ;
 int fp_set_sr (int ) ;

__attribute__((used)) static inline int fp_addcarry(struct fp_ext *reg)
{
 if (++reg->exp == 0x7fff) {
  if (reg->mant.m64)
   fp_set_sr(FPSR_EXC_INEX2);
  reg->mant.m64 = 0;
  fp_set_sr(FPSR_EXC_OVFL);
  return 0;
 }
 reg->lowmant = (reg->mant.m32[1] << 7) | (reg->lowmant ? 1 : 0);
 reg->mant.m32[1] = (reg->mant.m32[1] >> 1) |
      (reg->mant.m32[0] << 31);
 reg->mant.m32[0] = (reg->mant.m32[0] >> 1) | 0x80000000;

 return 1;
}
