
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ri_cb; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_4__ {int mask; } ;
struct pt_regs {TYPE_2__ psw; } ;


 int PSW_MASK_RI ;
 struct task_struct* current ;
 int kfree (int *) ;
 int load_runtime_instr_cb (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int runtime_instr_empty_cb ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static void disable_runtime_instr(void)
{
 struct task_struct *task = current;
 struct pt_regs *regs;

 if (!task->thread.ri_cb)
  return;
 regs = task_pt_regs(task);
 preempt_disable();
 load_runtime_instr_cb(&runtime_instr_empty_cb);
 kfree(task->thread.ri_cb);
 task->thread.ri_cb = ((void*)0);
 preempt_enable();






 regs->psw.mask &= ~PSW_MASK_RI;
}
