
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;
struct task_struct {int flags; } ;
struct pt_regs {int dummy; } ;
typedef int (* stack_trace_consume_fn ) (void*,unsigned long,int) ;


 int CONFIG_FRAME_POINTER ;
 int EINVAL ;
 scalar_t__ IS_ENABLED (int ) ;
 int PF_IDLE ;
 int PF_KTHREAD ;
 int unwind_done (struct unwind_state*) ;
 scalar_t__ unwind_error (struct unwind_state*) ;
 struct pt_regs* unwind_get_entry_regs (struct unwind_state*,int *) ;
 unsigned long unwind_get_return_address (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;
 int unwind_start (struct unwind_state*,struct task_struct*,int *,int *) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int arch_stack_walk_reliable(stack_trace_consume_fn consume_entry,
        void *cookie, struct task_struct *task)
{
 struct unwind_state state;
 struct pt_regs *regs;
 unsigned long addr;

 for (unwind_start(&state, task, ((void*)0), ((void*)0));
      !unwind_done(&state) && !unwind_error(&state);
      unwind_next_frame(&state)) {

  regs = unwind_get_entry_regs(&state, ((void*)0));
  if (regs) {

   if (user_mode(regs))
    return 0;
   if (IS_ENABLED(CONFIG_FRAME_POINTER))
    return -EINVAL;
  }

  addr = unwind_get_return_address(&state);






  if (!addr)
   return -EINVAL;

  if (!consume_entry(cookie, addr, 0))
   return -EINVAL;
 }


 if (unwind_error(&state))
  return -EINVAL;


 if (!(task->flags & (PF_KTHREAD | PF_IDLE)))
  return -EINVAL;

 return 0;
}
