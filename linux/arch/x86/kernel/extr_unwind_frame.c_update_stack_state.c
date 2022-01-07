
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {int type; int next_sp; } ;
struct unwind_state {unsigned long* bp; int got_irq; unsigned long* orig_sp; int graph_idx; int task; int ip; struct pt_regs* regs; struct stack_info stack_info; int stack_mask; } ;
struct pt_regs {int dummy; } ;
typedef enum stack_type { ____Placeholder_stack_type } stack_type ;


 size_t FRAME_HEADER_SIZE ;
 unsigned long READ_ONCE_TASK_STACK (int ,unsigned long) ;
 struct pt_regs* decode_frame_pointer (unsigned long*) ;
 int ftrace_graph_ret_addr (int ,int *,unsigned long,unsigned long*) ;
 scalar_t__ get_stack_info (int ,int ,struct stack_info*,int *) ;
 int on_stack (struct stack_info*,unsigned long*,size_t) ;
 unsigned long* unwind_get_return_address_ptr (struct unwind_state*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static bool update_stack_state(struct unwind_state *state,
          unsigned long *next_bp)
{
 struct stack_info *info = &state->stack_info;
 enum stack_type prev_type = info->type;
 struct pt_regs *regs;
 unsigned long *frame, *prev_frame_end, *addr_p, addr;
 size_t len;

 if (state->regs)
  prev_frame_end = (void *)state->regs + sizeof(*state->regs);
 else
  prev_frame_end = (void *)state->bp + FRAME_HEADER_SIZE;


 regs = decode_frame_pointer(next_bp);
 if (regs) {
  frame = (unsigned long *)regs;
  len = sizeof(*regs);
  state->got_irq = 1;
 } else {
  frame = next_bp;
  len = FRAME_HEADER_SIZE;
 }
 while (!on_stack(info, frame, len))
  if (get_stack_info(info->next_sp, state->task, info,
       &state->stack_mask))
   return 0;


 if (state->orig_sp && state->stack_info.type == prev_type &&
     frame < prev_frame_end)
  return 0;


 if (regs) {
  state->regs = regs;
  state->bp = ((void*)0);
 } else {
  state->bp = next_bp;
  state->regs = ((void*)0);
 }


 if (state->regs && user_mode(state->regs))
  state->ip = 0;
 else {
  addr_p = unwind_get_return_address_ptr(state);
  addr = READ_ONCE_TASK_STACK(state->task, *addr_p);
  state->ip = ftrace_graph_ret_addr(state->task, &state->graph_idx,
        addr, addr_p);
 }


 if (!state->orig_sp)
  state->orig_sp = frame;

 return 1;
}
