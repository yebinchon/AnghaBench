
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int fph; } ;
struct task_struct {TYPE_1__ thread; } ;
struct ia64_psr {int dfh; } ;


 int IA64_THREAD_FPH_VALID ;
 int ia64_drop_fpu (struct task_struct*) ;
 int ia64_flush_fph (struct task_struct*) ;
 struct ia64_psr* ia64_psr (int ) ;
 int memset (int *,int ,int) ;
 int task_pt_regs (struct task_struct*) ;

void
ia64_sync_fph (struct task_struct *task)
{
 struct ia64_psr *psr = ia64_psr(task_pt_regs(task));

 ia64_flush_fph(task);
 if (!(task->thread.flags & IA64_THREAD_FPH_VALID)) {
  task->thread.flags |= IA64_THREAD_FPH_VALID;
  memset(&task->thread.fph, 0, sizeof(task->thread.fph));
 }
 ia64_drop_fpu(task);
 psr->dfh = 1;
}
