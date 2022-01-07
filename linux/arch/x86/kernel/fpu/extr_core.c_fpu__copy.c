
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int xsave; } ;
struct fpu {int last_cpu; TYPE_3__ state; } ;
struct TYPE_7__ {struct fpu fpu; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_8__ {struct fpu fpu; } ;
struct TYPE_10__ {TYPE_2__ thread; } ;


 int TIF_NEED_FPU_LOAD ;
 int WARN_ON_FPU (int) ;
 int X86_FEATURE_FPU ;
 int copy_fpregs_to_fpstate (struct fpu*) ;
 int copy_kernel_to_fpregs (TYPE_3__*) ;
 TYPE_5__* current ;
 int fpregs_lock () ;
 int fpregs_unlock () ;
 int fpu_kernel_xstate_size ;
 int memcpy (TYPE_3__*,TYPE_3__*,int ) ;
 int memset (int *,int ,int ) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int static_cpu_has (int ) ;
 scalar_t__ test_thread_flag (int ) ;
 int trace_x86_fpu_copy_dst (struct fpu*) ;
 int trace_x86_fpu_copy_src (struct fpu*) ;

int fpu__copy(struct task_struct *dst, struct task_struct *src)
{
 struct fpu *dst_fpu = &dst->thread.fpu;
 struct fpu *src_fpu = &src->thread.fpu;

 dst_fpu->last_cpu = -1;

 if (!static_cpu_has(X86_FEATURE_FPU))
  return 0;

 WARN_ON_FPU(src_fpu != &current->thread.fpu);





 memset(&dst_fpu->state.xsave, 0, fpu_kernel_xstate_size);
 fpregs_lock();
 if (test_thread_flag(TIF_NEED_FPU_LOAD))
  memcpy(&dst_fpu->state, &src_fpu->state, fpu_kernel_xstate_size);

 else if (!copy_fpregs_to_fpstate(dst_fpu))
  copy_kernel_to_fpregs(&dst_fpu->state);

 fpregs_unlock();

 set_tsk_thread_flag(dst, TIF_NEED_FPU_LOAD);

 trace_x86_fpu_copy_src(src_fpu);
 trace_x86_fpu_copy_dst(dst_fpu);

 return 0;
}
