
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct stacktrace_ops {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int (* dump ) (struct task_struct*,struct pt_regs*,unsigned long*,struct stacktrace_ops const*,void*) ;int list; } ;


 TYPE_1__* curr_unwinder ;
 int list_del (int *) ;
 int list_is_singular (int *) ;
 TYPE_1__* select_unwinder () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct task_struct*,struct pt_regs*,unsigned long*,struct stacktrace_ops const*,void*) ;
 scalar_t__ unwinder_faulted ;
 int unwinder_list ;
 int unwinder_lock ;

void unwind_stack(struct task_struct *task, struct pt_regs *regs,
    unsigned long *sp, const struct stacktrace_ops *ops,
    void *data)
{
 unsigned long flags;
 if (unwinder_faulted) {
  spin_lock_irqsave(&unwinder_lock, flags);


  if (unwinder_faulted && !list_is_singular(&unwinder_list)) {
   list_del(&curr_unwinder->list);
   curr_unwinder = select_unwinder();

   unwinder_faulted = 0;
  }

  spin_unlock_irqrestore(&unwinder_lock, flags);
 }

 curr_unwinder->dump(task, regs, sp, ops, data);
}
