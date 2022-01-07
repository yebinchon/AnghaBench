
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fpu; } ;
struct TYPE_4__ {int flags; TYPE_1__ thread; } ;


 int PF_KTHREAD ;
 int TIF_NEED_FPU_LOAD ;
 int WARN_ON_FPU (int) ;
 int __cpu_invalidate_fpregs_state () ;
 int copy_fpregs_to_fpstate (int *) ;
 TYPE_2__* current ;
 int in_kernel_fpu ;
 int irq_fpu_usable () ;
 int preempt_disable () ;
 int set_thread_flag (int ) ;
 int test_thread_flag (int ) ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;

void kernel_fpu_begin(void)
{
 preempt_disable();

 WARN_ON_FPU(!irq_fpu_usable());
 WARN_ON_FPU(this_cpu_read(in_kernel_fpu));

 this_cpu_write(in_kernel_fpu, 1);

 if (!(current->flags & PF_KTHREAD) &&
     !test_thread_flag(TIF_NEED_FPU_LOAD)) {
  set_thread_flag(TIF_NEED_FPU_LOAD);




  copy_fpregs_to_fpstate(&current->thread.fpu);
 }
 __cpu_invalidate_fpregs_state();
}
