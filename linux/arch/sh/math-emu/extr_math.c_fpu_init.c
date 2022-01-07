
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {scalar_t__* xfp_regs; scalar_t__* fp_regs; scalar_t__ fpul; int fpscr; } ;


 int FPSCR_INIT ;

__attribute__((used)) static void fpu_init(struct sh_fpu_soft_struct *fpu)
{
 int i;

 fpu->fpscr = FPSCR_INIT;
 fpu->fpul = 0;

 for (i = 0; i < 16; i++) {
  fpu->fp_regs[i] = 0;
  fpu->xfp_regs[i]= 0;
 }
}
