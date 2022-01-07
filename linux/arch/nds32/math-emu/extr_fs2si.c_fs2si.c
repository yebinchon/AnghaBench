
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
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_EX_INVALID ;
 int FP_TO_INT_ROUND_S (int,int ,int,int) ;
 int FP_UNPACK_SP (int ,void*) ;
 int __FPU_FPCSR ;

void fs2si(void *ft, void *fa)
{
 int r;

 FP_DECL_S(A);
 FP_DECL_EX;

 FP_UNPACK_SP(A, fa);

 if (A_c == FP_CLS_INF) {
  *(int *)ft = (A_s == 0) ? 0x7fffffff : 0x80000000;
  __FPU_FPCSR |= FP_EX_INVALID;
 } else if (A_c == FP_CLS_NAN) {
  *(int *)ft = 0xffffffff;
  __FPU_FPCSR |= FP_EX_INVALID;
 } else {
  FP_TO_INT_ROUND_S(r, A, 32, 1);
  __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
  *(int *)ft = r;
 }
}
