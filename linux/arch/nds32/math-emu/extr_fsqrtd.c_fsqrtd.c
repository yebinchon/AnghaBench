
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int FP_CUR_EXCEPTIONS ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_PACK_DP (void*,int ) ;
 int FP_SQRT_D (int ,int ) ;
 int FP_UNPACK_DP (int ,void*) ;
 int R ;
 int __FPU_FPCSR ;

void fsqrtd(void *ft, void *fa)
{
 FP_DECL_D(A);
 FP_DECL_D(R);
 FP_DECL_EX;

 FP_UNPACK_DP(A, fa);

 FP_SQRT_D(R, A);

 FP_PACK_DP(ft, R);

 __FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}
