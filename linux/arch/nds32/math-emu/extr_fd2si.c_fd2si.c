
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 scalar_t__ A_c ;
 scalar_t__ A_s ;
 scalar_t__ FP_CLS_INF ;
 scalar_t__ FP_CLS_NAN ;
 int FP_CUR_EXCEPTIONS ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_EX_INVALID ;
 int FP_TO_INT_ROUND_D (int,int ,int,int) ;
 int FP_UNPACK_DP (int ,void*) ;
 int __FPU_FPCSR ;

void fd2si(void *ft, void *fa)
{
 int r;

 FP_DECL_D(A);
 FP_DECL_EX;

 FP_UNPACK_DP(A, fa);

 if (A_c == FP_CLS_INF) {
  *(int *)ft = (A_s == 0) ? 0x7fffffff : 0x80000000;
  __FPU_FPCSR |= FP_EX_INVALID;
 } else if (A_c == FP_CLS_NAN) {
  *(int *)ft = 0xffffffff;
  __FPU_FPCSR |= FP_EX_INVALID;
 } else {
  FP_TO_INT_ROUND_D(r, A, 32, 1);
  __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
  *(int *)ft = r;
 }

}
