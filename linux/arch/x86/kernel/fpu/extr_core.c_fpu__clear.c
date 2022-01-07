
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpu {int dummy; } ;
struct TYPE_3__ {struct fpu fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int WARN_ON_FPU (int) ;
 int X86_FEATURE_FPU ;
 int copy_init_fpstate_to_fpregs () ;
 TYPE_2__* current ;
 int fpu__drop (struct fpu*) ;
 int fpu__initialize (struct fpu*) ;
 scalar_t__ static_cpu_has (int ) ;

void fpu__clear(struct fpu *fpu)
{
 WARN_ON_FPU(fpu != &current->thread.fpu);

 fpu__drop(fpu);




 fpu__initialize(fpu);
 if (static_cpu_has(X86_FEATURE_FPU))
  copy_init_fpstate_to_fpregs();
}
