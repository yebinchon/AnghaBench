
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 int FPE_FLTDIV ;
 int FPE_FLTINV ;
 int FPE_FLTOVF ;
 int FPE_FLTRES ;
 int FPE_FLTUND ;
 int FPSCR ;
 int FPSCR_C ;
 int FPSCR_DZC ;
 int FPSCR_DZE ;
 int FPSCR_IOC ;
 int FPSCR_IOE ;
 int FPSCR_IXC ;
 int FPSCR_IXE ;
 int FPSCR_N ;
 int FPSCR_OFC ;
 int FPSCR_OFE ;
 int FPSCR_UFC ;
 int FPSCR_UFE ;
 int FPSCR_V ;
 int FPSCR_Z ;
 int RAISE (int ,int ,int) ;
 int VFP_EXCEPTION_ERROR ;
 int fmxr (int ,int) ;
 int pr_debug (char*,int) ;
 int vfp_panic (char*,int) ;
 int vfp_raise_sigfpe (int,struct pt_regs*) ;

__attribute__((used)) static void vfp_raise_exceptions(u32 exceptions, u32 inst, u32 fpscr, struct pt_regs *regs)
{
 int si_code = 0;

 pr_debug("VFP: raising exceptions %08x\n", exceptions);

 if (exceptions == VFP_EXCEPTION_ERROR) {
  vfp_panic("unhandled bounce", inst);
  vfp_raise_sigfpe(FPE_FLTINV, regs);
  return;
 }






 if (exceptions & (FPSCR_N|FPSCR_Z|FPSCR_C|FPSCR_V))
  fpscr &= ~(FPSCR_N|FPSCR_Z|FPSCR_C|FPSCR_V);

 fpscr |= exceptions;

 fmxr(FPSCR, fpscr);
 if (exceptions & FPSCR_DZC && fpscr & FPSCR_DZE) si_code = FPE_FLTDIV;;
 if (exceptions & FPSCR_IXC && fpscr & FPSCR_IXE) si_code = FPE_FLTRES;;
 if (exceptions & FPSCR_UFC && fpscr & FPSCR_UFE) si_code = FPE_FLTUND;;
 if (exceptions & FPSCR_OFC && fpscr & FPSCR_OFE) si_code = FPE_FLTOVF;;
 if (exceptions & FPSCR_IOC && fpscr & FPSCR_IOE) si_code = FPE_FLTINV;;

 if (si_code)
  vfp_raise_sigfpe(si_code, regs);
}
