
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct unwind_state {unsigned long sp; int full_regs; int signal; TYPE_2__ stack_info; int stack_mask; struct task_struct* task; void* ip; void* bp; struct pt_regs* regs; } ;
struct TYPE_4__ {unsigned long sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {unsigned long sp; void* bp; void* ip; } ;
struct inactive_task_frame {int ret_addr; int bp; } ;


 scalar_t__ PAGE_ALIGN (unsigned long) ;
 void* READ_ONCE_NOCHECK (int ) ;
 int STACK_TYPE_UNKNOWN ;
 struct task_struct* current ;
 scalar_t__ get_stack_info (void*,struct task_struct*,TYPE_2__*,int *) ;
 int memset (struct unwind_state*,int ,int) ;
 int on_stack (TYPE_2__*,unsigned long*,int) ;
 scalar_t__ task_on_another_cpu (struct task_struct*) ;
 int unwind_done (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void __unwind_start(struct unwind_state *state, struct task_struct *task,
      struct pt_regs *regs, unsigned long *first_frame)
{
 memset(state, 0, sizeof(*state));
 state->task = task;






 if (task_on_another_cpu(task))
  goto done;

 if (regs) {
  if (user_mode(regs))
   goto done;

  state->ip = regs->ip;
  state->sp = regs->sp;
  state->bp = regs->bp;
  state->regs = regs;
  state->full_regs = 1;
  state->signal = 1;

 } else if (task == current) {
  asm volatile("lea (%%rip), %0\n\t"
        "mov %%rsp, %1\n\t"
        "mov %%rbp, %2\n\t"
        : "=r" (state->ip), "=r" (state->sp),
          "=r" (state->bp));

 } else {
  struct inactive_task_frame *frame = (void *)task->thread.sp;

  state->sp = task->thread.sp;
  state->bp = READ_ONCE_NOCHECK(frame->bp);
  state->ip = READ_ONCE_NOCHECK(frame->ret_addr);
 }

 if (get_stack_info((unsigned long *)state->sp, state->task,
      &state->stack_info, &state->stack_mask)) {






  void *next_page = (void *)PAGE_ALIGN((unsigned long)state->sp);
  if (get_stack_info(next_page, state->task, &state->stack_info,
       &state->stack_mask))
   return;
 }
 if (regs) {
  unwind_next_frame(state);
  return;
 }


 while (!unwind_done(state) &&
        (!on_stack(&state->stack_info, first_frame, sizeof(long)) ||
   state->sp <= (unsigned long)first_frame))
  unwind_next_frame(state);

 return;

done:
 state->stack_info.type = STACK_TYPE_UNKNOWN;
 return;
}
