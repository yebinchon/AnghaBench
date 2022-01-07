
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int B ;
 int FP_CMP_D (long,int ,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_UNPACK_DP (int ,void*) ;
 long SF_CGT ;
 int SF_CUN ;

int fcmpd(void *ft, void *fa, void *fb, int cmpop)
{
 FP_DECL_D(A);
 FP_DECL_D(B);
 FP_DECL_EX;
 long cmp;

 FP_UNPACK_DP(A, fa);
 FP_UNPACK_DP(B, fb);

 FP_CMP_D(cmp, A, B, SF_CUN);
 cmp += 2;
 if (cmp == SF_CGT)
  *(long *)ft = 0;
 else
  *(long *)ft = (cmp & cmpop) ? 1 : 0;

 return 0;
}
