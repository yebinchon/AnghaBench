
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned short cwd; unsigned short swd; unsigned short mxcsr; } ;
struct TYPE_4__ {scalar_t__ swd; scalar_t__ cwd; } ;
struct TYPE_6__ {TYPE_2__ fxsave; TYPE_1__ fsave; } ;
struct fpu {TYPE_3__ state; } ;


 int FPE_FLTDIV ;
 int FPE_FLTINV ;
 int FPE_FLTOVF ;
 int FPE_FLTRES ;
 int FPE_FLTUND ;
 unsigned short MXCSR_DEFAULT ;
 int X86_FEATURE_FXSR ;
 int X86_FEATURE_XMM ;
 int X86_TRAP_MF ;
 scalar_t__ boot_cpu_has (int ) ;

int fpu__exception_code(struct fpu *fpu, int trap_nr)
{
 int err;

 if (trap_nr == X86_TRAP_MF) {
  unsigned short cwd, swd;
  if (boot_cpu_has(X86_FEATURE_FXSR)) {
   cwd = fpu->state.fxsave.cwd;
   swd = fpu->state.fxsave.swd;
  } else {
   cwd = (unsigned short)fpu->state.fsave.cwd;
   swd = (unsigned short)fpu->state.fsave.swd;
  }

  err = swd & ~cwd;
 } else {






  unsigned short mxcsr = MXCSR_DEFAULT;

  if (boot_cpu_has(X86_FEATURE_XMM))
   mxcsr = fpu->state.fxsave.mxcsr;

  err = ~(mxcsr >> 7) & mxcsr;
 }

 if (err & 0x001) {





  return FPE_FLTINV;
 } else if (err & 0x004) {
  return FPE_FLTDIV;
 } else if (err & 0x008) {
  return FPE_FLTOVF;
 } else if (err & 0x012) {
  return FPE_FLTUND;
 } else if (err & 0x020) {
  return FPE_FLTRES;
 }






 return 0;
}
