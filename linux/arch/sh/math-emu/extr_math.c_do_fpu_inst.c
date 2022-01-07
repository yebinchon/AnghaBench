
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* xstate; } ;
struct task_struct {TYPE_2__ thread; } ;
struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_4__ {struct sh_fpu_soft_struct softfpu; } ;


 int PERF_COUNT_SW_EMULATION_FAULTS ;
 int TS_USEDFPU ;
 struct task_struct* current ;
 int fpu_emulate (unsigned short,struct sh_fpu_soft_struct*,struct pt_regs*) ;
 int fpu_init (struct sh_fpu_soft_struct*) ;
 int perf_sw_event (int ,int,struct pt_regs*,int ) ;
 TYPE_3__* task_thread_info (struct task_struct*) ;

int do_fpu_inst(unsigned short inst, struct pt_regs *regs)
{
 struct task_struct *tsk = current;
 struct sh_fpu_soft_struct *fpu = &(tsk->thread.xstate->softfpu);

 perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, 0);

 if (!(task_thread_info(tsk)->status & TS_USEDFPU)) {

  fpu_init(fpu);
  task_thread_info(tsk)->status |= TS_USEDFPU;
 }

 return fpu_emulate(inst, fpu, regs);
}
