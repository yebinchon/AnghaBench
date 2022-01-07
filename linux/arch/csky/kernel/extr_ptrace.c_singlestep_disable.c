
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int sr; } ;


 int TRACE_MODE_MASK ;
 int TRACE_MODE_RUN ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static void singlestep_disable(struct task_struct *tsk)
{
 struct pt_regs *regs;

 regs = task_pt_regs(tsk);
 regs->sr = (regs->sr & TRACE_MODE_MASK) | TRACE_MODE_RUN;
}
