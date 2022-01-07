
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsave; int fxsave; int xsave; } ;


 int X86_FEATURE_FXSR ;
 int X86_FEATURE_OSPKE ;
 scalar_t__ boot_cpu_has (int ) ;
 int copy_init_pkru_to_fpregs () ;
 int copy_kernel_to_fregs (int *) ;
 int copy_kernel_to_fxregs (int *) ;
 int copy_kernel_to_xregs (int *,int) ;
 int fpregs_lock () ;
 int fpregs_mark_activate () ;
 int fpregs_unlock () ;
 TYPE_1__ init_fpstate ;
 scalar_t__ static_cpu_has (int ) ;
 scalar_t__ use_xsave () ;

__attribute__((used)) static inline void copy_init_fpstate_to_fpregs(void)
{
 fpregs_lock();

 if (use_xsave())
  copy_kernel_to_xregs(&init_fpstate.xsave, -1);
 else if (static_cpu_has(X86_FEATURE_FXSR))
  copy_kernel_to_fxregs(&init_fpstate.fxsave);
 else
  copy_kernel_to_fregs(&init_fpstate.fsave);

 if (boot_cpu_has(X86_FEATURE_OSPKE))
  copy_init_pkru_to_fpregs();

 fpregs_mark_activate();
 fpregs_unlock();
}
