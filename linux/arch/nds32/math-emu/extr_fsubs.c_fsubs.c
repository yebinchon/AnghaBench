
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int B ;
 scalar_t__ B_c ;
 int B_s ;
 int FP_ADD_S (int ,int ,int ) ;
 scalar_t__ FP_CLS_NAN ;
 int FP_CUR_EXCEPTIONS ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_PACK_SP (void*,int ) ;
 int FP_UNPACK_SP (int ,void*) ;
 int R ;
 int __FPU_FPCSR ;

void fsubs(void *ft, void *fa, void *fb)
{

 FP_DECL_S(A);
 FP_DECL_S(B);
 FP_DECL_S(R);
 FP_DECL_EX;

 FP_UNPACK_SP(A, fa);
 FP_UNPACK_SP(B, fb);

 if (B_c != FP_CLS_NAN)
  B_s ^= 1;

 FP_ADD_S(R, A, B);

 FP_PACK_SP(ft, R);

 __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}
