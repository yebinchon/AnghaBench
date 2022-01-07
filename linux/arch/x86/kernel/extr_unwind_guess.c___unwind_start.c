
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int stack_info; int stack_mask; struct task_struct* task; int sp; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int PTR_ALIGN (unsigned long*,int) ;
 int __kernel_text_address (unsigned long) ;
 int get_stack_info (unsigned long*,struct task_struct*,int *,int *) ;
 int memset (struct unwind_state*,int ,int) ;
 int on_stack (int *,unsigned long*,int) ;
 int unwind_done (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;

void __unwind_start(struct unwind_state *state, struct task_struct *task,
      struct pt_regs *regs, unsigned long *first_frame)
{
 memset(state, 0, sizeof(*state));

 state->task = task;
 state->sp = PTR_ALIGN(first_frame, sizeof(long));

 get_stack_info(first_frame, state->task, &state->stack_info,
         &state->stack_mask);






 if (!unwind_done(state) &&
     (!on_stack(&state->stack_info, first_frame, sizeof(long)) ||
     !__kernel_text_address(*first_frame)))
  unwind_next_frame(state);
}
