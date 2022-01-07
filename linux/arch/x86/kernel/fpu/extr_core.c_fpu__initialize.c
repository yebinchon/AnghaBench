
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
 TYPE_2__* current ;
 int fpstate_init (int *) ;
 int set_thread_flag (int ) ;
 int trace_x86_fpu_init_state (struct fpu*) ;

__attribute__((used)) static void fpu__initialize(struct fpu *fpu)
{
 WARN_ON_FPU(fpu != &current->thread.fpu);

 set_thread_flag(TIF_NEED_FPU_LOAD);
 fpstate_init(&fpu->state);
 trace_x86_fpu_init_state(fpu);
}
