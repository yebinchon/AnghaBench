
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 scalar_t__ A_c ;
 int B ;
 scalar_t__ B_c ;
 scalar_t__ FP_CLS_ZERO ;
 int FP_CUR_EXCEPTIONS ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DIV_D (int ,int ,int ) ;
 int FP_EX_DIVZERO ;
 int FP_PACK_DP (void*,int ) ;
 int FP_SET_EXCEPTION (int ) ;
 int FP_UNPACK_DP (int ,void*) ;
 int R ;
 int __FPU_FPCSR ;

void fdivd(void *ft, void *fa, void *fb)
{
 FP_DECL_D(A);
 FP_DECL_D(B);
 FP_DECL_D(R);
 FP_DECL_EX;

 FP_UNPACK_DP(A, fa);
 FP_UNPACK_DP(B, fb);

 if (B_c == FP_CLS_ZERO && A_c != FP_CLS_ZERO)
  FP_SET_EXCEPTION(FP_EX_DIVZERO);

 FP_DIV_D(R, A, B);

 FP_PACK_DP(ft, R);

 __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}
