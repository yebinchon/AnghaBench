
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stack_info {int type; } ;
struct unwind_state {int reuse_sp; unsigned long sp; unsigned long ip; int reliable; int error; struct stack_info stack_info; struct pt_regs* regs; int graph_idx; int task; } ;
struct stack_frame {int * gprs; int back_chain; } ;
struct TYPE_2__ {int addr; int mask; } ;
struct pt_regs {TYPE_1__ psw; int * gprs; } ;


 int PSW_MASK_PSTATE ;
 int READ_ONCE_NOCHECK (int ) ;
 unsigned long STACK_FRAME_OVERHEAD ;
 int STACK_TYPE_UNKNOWN ;
 unsigned long ftrace_graph_ret_addr (int ,int *,unsigned long,void*) ;
 scalar_t__ likely (unsigned long) ;
 int on_stack (struct stack_info*,unsigned long,int) ;
 struct pt_regs* outside_of_stack (struct unwind_state*,unsigned long) ;
 scalar_t__ return_to_handler ;
 scalar_t__ unlikely (struct pt_regs*) ;
 int update_stack_info (struct unwind_state*,unsigned long) ;

bool unwind_next_frame(struct unwind_state *state)
{
 struct stack_info *info = &state->stack_info;
 struct stack_frame *sf;
 struct pt_regs *regs;
 unsigned long sp, ip;
 bool reliable;

 regs = state->regs;
 if (unlikely(regs)) {
  if (state->reuse_sp) {
   sp = state->sp;
   state->reuse_sp = 0;
  } else {
   sp = READ_ONCE_NOCHECK(regs->gprs[15]);
   if (unlikely(outside_of_stack(state, sp))) {
    if (!update_stack_info(state, sp))
     goto out_err;
   }
  }
  sf = (struct stack_frame *) sp;
  ip = READ_ONCE_NOCHECK(sf->gprs[8]);
  reliable = 0;
  regs = ((void*)0);
 } else {
  sf = (struct stack_frame *) state->sp;
  sp = READ_ONCE_NOCHECK(sf->back_chain);
  if (likely(sp)) {

   if (unlikely(outside_of_stack(state, sp))) {
    if (!update_stack_info(state, sp))
     goto out_err;
   }
   sf = (struct stack_frame *) sp;
   ip = READ_ONCE_NOCHECK(sf->gprs[8]);
   reliable = 1;
  } else {

   sp = state->sp + STACK_FRAME_OVERHEAD;
   if (!on_stack(info, sp, sizeof(struct pt_regs)))
    goto out_stop;
   regs = (struct pt_regs *) sp;
   if (READ_ONCE_NOCHECK(regs->psw.mask) & PSW_MASK_PSTATE)
    goto out_stop;
   ip = READ_ONCE_NOCHECK(regs->psw.addr);
   reliable = 1;
  }
 }
 state->sp = sp;
 state->ip = ip;
 state->regs = regs;
 state->reliable = reliable;
 return 1;

out_err:
 state->error = 1;
out_stop:
 state->stack_info.type = STACK_TYPE_UNKNOWN;
 return 0;
}
