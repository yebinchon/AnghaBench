
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_FPU ;
 int __fpregs_load_activate () ;
 int static_cpu_has (int ) ;

void switch_fpu_return(void)
{
 if (!static_cpu_has(X86_FEATURE_FPU))
  return;

 __fpregs_load_activate();
}
