
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ callee_reg; } ;
struct task_struct {TYPE_1__ thread; } ;
struct callee_regs {int dummy; } ;



__attribute__((used)) static struct callee_regs *task_callee_regs(struct task_struct *tsk)
{
 struct callee_regs *tmp = (struct callee_regs *)tsk->thread.callee_reg;
 return tmp;
}
