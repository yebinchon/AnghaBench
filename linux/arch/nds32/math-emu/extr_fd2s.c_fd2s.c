
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int D ;
 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_CUR_EXCEPTIONS ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_PACK_SP (void*,int ) ;
 int FP_UNPACK_DP (int ,void*) ;
 int R ;
 int S ;
 int __FPU_FPCSR ;

void fd2s(void *ft, void *fa)
{
 FP_DECL_D(A);
 FP_DECL_S(R);
 FP_DECL_EX;

 FP_UNPACK_DP(A, fa);

 FP_CONV(S, D, 1, 2, R, A);

 FP_PACK_SP(ft, R);

 __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}
