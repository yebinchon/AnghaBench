
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
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_DIV_S (int ,int ,int ) ;
 int FP_EX_DIVZERO ;
 int FP_PACK_SP (void*,int ) ;
 int FP_SET_EXCEPTION (int ) ;
 int FP_UNPACK_SP (int ,void*) ;
 int R ;
 int __FPU_FPCSR ;

void fdivs(void *ft, void *fa, void *fb)
{
 FP_DECL_S(A);
 FP_DECL_S(B);
 FP_DECL_S(R);
 FP_DECL_EX;

 FP_UNPACK_SP(A, fa);
 FP_UNPACK_SP(B, fb);

 if (B_c == FP_CLS_ZERO && A_c != FP_CLS_ZERO)
  FP_SET_EXCEPTION(FP_EX_DIVZERO);

 FP_DIV_S(R, A, B);

 FP_PACK_SP(ft, R);

 __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}
