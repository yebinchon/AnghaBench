
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stack_info {void* type; } ;
struct unwind_state {unsigned long stack_mask; int error; unsigned long sp; unsigned long ip; int reliable; int reuse_sp; int graph_idx; struct task_struct* task; struct pt_regs* regs; struct stack_info stack_info; } ;
struct task_struct {int dummy; } ;
struct stack_frame {int * gprs; } ;
struct TYPE_2__ {int addr; } ;
struct pt_regs {TYPE_1__ psw; } ;


 unsigned long READ_ONCE_NOCHECK (int ) ;
 void* STACK_TYPE_UNKNOWN ;
 unsigned long ftrace_graph_ret_addr (struct task_struct*,int *,unsigned long,int *) ;
 scalar_t__ get_stack_info (unsigned long,struct task_struct*,struct stack_info*,unsigned long*) ;
 int memset (struct unwind_state*,int ,int) ;
 int on_stack (struct stack_info*,unsigned long,int) ;
 scalar_t__ return_to_handler ;
 scalar_t__ user_mode (struct pt_regs*) ;

void __unwind_start(struct unwind_state *state, struct task_struct *task,
      struct pt_regs *regs, unsigned long sp)
{
 struct stack_info *info = &state->stack_info;
 unsigned long *mask = &state->stack_mask;
 bool reliable, reuse_sp;
 struct stack_frame *sf;
 unsigned long ip;

 memset(state, 0, sizeof(*state));
 state->task = task;
 state->regs = regs;


 if (regs && user_mode(regs)) {
  info->type = STACK_TYPE_UNKNOWN;
  return;
 }


 if (get_stack_info(sp, task, info, mask) != 0 ||
     !on_stack(info, sp, sizeof(struct stack_frame))) {

  info->type = STACK_TYPE_UNKNOWN;
  state->error = 1;
  return;
 }


 if (regs) {
  ip = READ_ONCE_NOCHECK(regs->psw.addr);
  reliable = 1;
  reuse_sp = 1;
 } else {
  sf = (struct stack_frame *) sp;
  ip = READ_ONCE_NOCHECK(sf->gprs[8]);
  reliable = 0;
  reuse_sp = 0;
 }
 state->sp = sp;
 state->ip = ip;
 state->reliable = reliable;
 state->reuse_sp = reuse_sp;
}
