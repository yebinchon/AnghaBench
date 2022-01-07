
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int B ;
 int FP_CMP_S (long,int ,int ,int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_UNPACK_SP (int ,void*) ;
 long SF_CGT ;
 int SF_CUN ;

int fcmps(void *ft, void *fa, void *fb, int cmpop)
{
 FP_DECL_S(A);
 FP_DECL_S(B);
 FP_DECL_EX;
 long cmp;

 FP_UNPACK_SP(A, fa);
 FP_UNPACK_SP(B, fb);

 FP_CMP_S(cmp, A, B, SF_CUN);
 cmp += 2;
 if (cmp == SF_CGT)
  *(int *)ft = 0x0;
 else
  *(int *)ft = (cmp & cmpop) ? 0x1 : 0x0;

 return 0;
}
