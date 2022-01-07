
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpu {int state; } ;
struct TYPE_3__ {struct fpu fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int TIF_NEED_FPU_LOAD ;
 int WARN_ON_FPU (int) ;
 int copy_fpregs_to_fpstate (struct fpu*) ;
 int copy_kernel_to_fpregs (int *) ;
 TYPE_2__* current ;
 int fpregs_lock () ;
 int fpregs_unlock () ;
 int test_thread_flag (int ) ;
 int trace_x86_fpu_after_save (struct fpu*) ;
 int trace_x86_fpu_before_save (struct fpu*) ;

void fpu__save(struct fpu *fpu)
{
 WARN_ON_FPU(fpu != &current->thread.fpu);

 fpregs_lock();
 trace_x86_fpu_before_save(fpu);

 if (!test_thread_flag(TIF_NEED_FPU_LOAD)) {
  if (!copy_fpregs_to_fpstate(fpu)) {
   copy_kernel_to_fpregs(&fpu->state);
  }
 }

 trace_x86_fpu_after_save(fpu);
 fpregs_unlock();
}
