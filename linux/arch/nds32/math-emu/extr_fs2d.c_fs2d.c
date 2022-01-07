
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
 int FP_PACK_DP (void*,int ) ;
 int FP_UNPACK_SP (int ,void*) ;
 int R ;
 int S ;
 int __FPU_FPCSR ;

void fs2d(void *ft, void *fa)
{
 FP_DECL_S(A);
 FP_DECL_D(R);
 FP_DECL_EX;

 FP_UNPACK_SP(A, fa);

 FP_CONV(D, S, 2, 1, R, A);

 FP_PACK_DP(ft, R);

 __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}
