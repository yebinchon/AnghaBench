
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ callee_reg; } ;
struct task_struct {TYPE_1__ thread; } ;
struct callee_regs {int dummy; } ;


 int task_pt_regs (struct task_struct*) ;
 int to_gdb_regs (unsigned long*,int ,struct callee_regs*) ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs,
     struct task_struct *task)
{
 if (task)
  to_gdb_regs(gdb_regs, task_pt_regs(task),
   (struct callee_regs *) task->thread.callee_reg);
}
