
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int __u32 ;


 int FPE_FLTDIV ;
 int FPE_FLTINV ;
 int FPE_FLTOVF ;
 int FPE_FLTRES ;
 int FPE_FLTUND ;
 int SIGFPE ;
 int do_trap (struct pt_regs*,int ,int,char*) ;

__attribute__((used)) static inline void do_fp_trap(struct pt_regs *regs, __u32 fpc)
{
 int si_code = 0;

 if ((fpc & 0x00000300) == 0) {

  if (fpc & 0x8000)
   si_code = FPE_FLTINV;
  else if (fpc & 0x4000)
   si_code = FPE_FLTDIV;
  else if (fpc & 0x2000)
   si_code = FPE_FLTOVF;
  else if (fpc & 0x1000)
   si_code = FPE_FLTUND;
  else if (fpc & 0x0800)
   si_code = FPE_FLTRES;
 }
 do_trap(regs, SIGFPE, si_code, "floating point exception");
}
