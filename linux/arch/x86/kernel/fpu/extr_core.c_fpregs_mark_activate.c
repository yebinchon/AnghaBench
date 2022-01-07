
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpu {int last_cpu; } ;
struct TYPE_3__ {struct fpu fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int TIF_NEED_FPU_LOAD ;
 int clear_thread_flag (int ) ;
 TYPE_2__* current ;
 int fpregs_activate (struct fpu*) ;
 int smp_processor_id () ;

void fpregs_mark_activate(void)
{
 struct fpu *fpu = &current->thread.fpu;

 fpregs_activate(fpu);
 fpu->last_cpu = smp_processor_id();
 clear_thread_flag(TIF_NEED_FPU_LOAD);
}
