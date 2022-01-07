
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct unwind_state {unsigned long* next_bp; unsigned long* bp; TYPE_1__ stack_info; int stack_mask; struct task_struct* task; struct pt_regs* got_irq; } ;
struct task_struct {int dummy; } ;
struct pt_regs {scalar_t__ ip; scalar_t__ sp; } ;


 int STACK_TYPE_UNKNOWN ;
 unsigned long* get_frame_pointer (struct task_struct*,struct pt_regs*) ;
 int get_stack_info (unsigned long*,struct task_struct*,TYPE_1__*,int *) ;
 int memset (struct unwind_state*,int ,int) ;
 int on_stack (TYPE_1__*,unsigned long*,int) ;
 int unwind_done (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;
 int update_stack_state (struct unwind_state*,unsigned long*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void __unwind_start(struct unwind_state *state, struct task_struct *task,
      struct pt_regs *regs, unsigned long *first_frame)
{
 unsigned long *bp;

 memset(state, 0, sizeof(*state));
 state->task = task;
 state->got_irq = (regs);


 if (regs && user_mode(regs)) {
  state->stack_info.type = STACK_TYPE_UNKNOWN;
  return;
 }

 bp = get_frame_pointer(task, regs);
 if (regs && regs->ip == 0 && (unsigned long *)regs->sp >= first_frame) {
  state->next_bp = bp;
  bp = ((unsigned long *)regs->sp) - 1;
 }


 get_stack_info(bp, state->task, &state->stack_info,
         &state->stack_mask);
 update_stack_state(state, bp);






 while (!unwind_done(state) &&
        (!on_stack(&state->stack_info, first_frame, sizeof(long)) ||
   (state->next_bp == ((void*)0) && state->bp < first_frame)))
  unwind_next_frame(state);
}
