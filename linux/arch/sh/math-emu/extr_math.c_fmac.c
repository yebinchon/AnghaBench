
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int F0 ;
 int FP_ADD_S (int ,int ,int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_MUL_S (int ,int ,int ) ;
 int FR0 ;
 int FRm ;
 int FRn ;
 int Fm ;
 int Fn ;
 int Fr ;
 int Ft ;
 int PACK_S (int ,int ) ;
 int UNPACK_S (int ,int ) ;

__attribute__((used)) static int
fmac(struct sh_fpu_soft_struct *fregs, struct pt_regs *regs, int m, int n)
{
 FP_DECL_EX;
 FP_DECL_S(Fr);
 FP_DECL_S(Ft);
 FP_DECL_S(F0);
 FP_DECL_S(Fm);
 FP_DECL_S(Fn);
 UNPACK_S(F0, FR0);
 UNPACK_S(Fm, FRm);
 UNPACK_S(Fn, FRn);
 FP_MUL_S(Ft, Fm, F0);
 FP_ADD_S(Fr, Fn, Ft);
 PACK_S(FRn, Fr);
 return 0;
}
