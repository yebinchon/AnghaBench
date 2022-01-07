
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union fpregs_state {int fsave; int fxsave; int xsave; int soft; } ;


 int X86_FEATURE_FPU ;
 int X86_FEATURE_FXSR ;
 int X86_FEATURE_XSAVES ;
 int fpstate_init_fstate (int *) ;
 int fpstate_init_fxstate (int *) ;
 int fpstate_init_soft (int *) ;
 int fpstate_init_xstate (int *) ;
 int fpu_kernel_xstate_size ;
 int memset (union fpregs_state*,int ,int ) ;
 scalar_t__ static_cpu_has (int ) ;

void fpstate_init(union fpregs_state *state)
{
 if (!static_cpu_has(X86_FEATURE_FPU)) {
  fpstate_init_soft(&state->soft);
  return;
 }

 memset(state, 0, fpu_kernel_xstate_size);

 if (static_cpu_has(X86_FEATURE_XSAVES))
  fpstate_init_xstate(&state->xsave);
 if (static_cpu_has(X86_FEATURE_FXSR))
  fpstate_init_fxstate(&state->fxsave);
 else
  fpstate_init_fstate(&state->fsave);
}
