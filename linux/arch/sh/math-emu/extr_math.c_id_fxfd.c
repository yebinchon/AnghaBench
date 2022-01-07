
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;


 int const FPSCR_FR ;
 int const FPSCR_PR ;
 int const FPSCR_SZ ;
 int fsca (struct sh_fpu_soft_struct*,int) ;
 int ftrv (struct sh_fpu_soft_struct*,int) ;
 int fxchg (struct sh_fpu_soft_struct*,int const) ;

__attribute__((used)) static int id_fxfd(struct sh_fpu_soft_struct *fregs, int x)
{
 const int flag[] = { FPSCR_SZ, FPSCR_PR, FPSCR_FR, 0 };
 switch (x & 3) {
 case 3:
  fxchg(fregs, flag[x >> 2]);
  break;
 case 1:
  ftrv(fregs, x - 1);
  break;
 default:
  fsca(fregs, x);
 }
 return 0;
}
