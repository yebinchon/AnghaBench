
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;


 int D ;
 int DRn ;
 int EMU_FTRC_X (int ,int ) ;
 scalar_t__ FPSCR_PR ;
 int FP_DECL_EX ;
 int FRn ;
 int S ;

__attribute__((used)) static int ftrc(struct sh_fpu_soft_struct *fregs, int n)
{
 FP_DECL_EX;

 if (FPSCR_PR)
  EMU_FTRC_X(D, DRn);
 else
  EMU_FTRC_X(S, FRn);

 return 0;
}
