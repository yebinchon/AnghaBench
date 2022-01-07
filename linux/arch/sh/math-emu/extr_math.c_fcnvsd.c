
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;


 int D ;
 int DRn ;
 int FPUL ;
 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int Fn ;
 int Fr ;
 int PACK_D (int ,int ) ;
 int S ;
 int UNPACK_S (int ,int ) ;

__attribute__((used)) static int fcnvsd(struct sh_fpu_soft_struct *fregs, int n)
{
 FP_DECL_EX;
 FP_DECL_S(Fn);
 FP_DECL_D(Fr);
 UNPACK_S(Fn, FPUL);
 FP_CONV(D, S, 2, 1, Fr, Fn);
 PACK_D(DRn, Fr);
 return 0;
}
