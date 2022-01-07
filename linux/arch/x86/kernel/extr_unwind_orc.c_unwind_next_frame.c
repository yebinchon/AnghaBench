
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct unwind_state {unsigned long ip; unsigned long sp; int signal; int error; unsigned long bp; int full_regs; TYPE_1__ stack_info; struct pt_regs* regs; int graph_idx; int task; } ;
struct pt_regs {unsigned long r10; unsigned long r13; unsigned long di; unsigned long dx; unsigned long bp; } ;
struct orc_entry {int sp_reg; unsigned long sp_offset; int type; int bp_reg; unsigned long bp_offset; int end; } ;
typedef enum stack_type { ____Placeholder_stack_type } stack_type ;


 int IRET_FRAME_OFFSET ;
 int STACK_TYPE_UNKNOWN ;
 int deref_stack_iret_regs (struct unwind_state*,unsigned long,unsigned long*,unsigned long*) ;
 int deref_stack_reg (struct unwind_state*,unsigned long,unsigned long*) ;
 int deref_stack_regs (struct unwind_state*,unsigned long,unsigned long*,unsigned long*) ;
 unsigned long ftrace_graph_ret_addr (int ,int *,unsigned long,void*) ;
 scalar_t__ on_stack (TYPE_1__*,void*,int) ;
 struct orc_entry* orc_find (int) ;
 struct orc_entry orc_fp_entry ;
 int orc_warn (char*,void*,...) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ unwind_done (struct unwind_state*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

bool unwind_next_frame(struct unwind_state *state)
{
 unsigned long ip_p, sp, orig_ip = state->ip, prev_sp = state->sp;
 enum stack_type prev_type = state->stack_info.type;
 struct orc_entry *orc;
 bool indirect = 0;

 if (unwind_done(state))
  return 0;


 preempt_disable();


 if (state->regs && user_mode(state->regs))
  goto the_end;







 orc = orc_find(state->signal ? state->ip : state->ip - 1);
 if (!orc) {






  orc = &orc_fp_entry;
  state->error = 1;
 }


 if (orc->sp_reg == 131) {
  if (!orc->end)
   goto err;

  goto the_end;
 }


 switch (orc->sp_reg) {
 case 133:
  sp = state->sp + orc->sp_offset;
  break;

 case 140:
  sp = state->bp + orc->sp_offset;
  break;

 case 132:
  sp = state->sp + orc->sp_offset;
  indirect = 1;
  break;

 case 139:
  sp = state->bp + orc->sp_offset;
  indirect = 1;
  break;

 case 135:
  if (!state->regs || !state->full_regs) {
   orc_warn("missing regs for base reg R10 at ip %pB\n",
     (void *)state->ip);
   goto err;
  }
  sp = state->regs->r10;
  break;

 case 134:
  if (!state->regs || !state->full_regs) {
   orc_warn("missing regs for base reg R13 at ip %pB\n",
     (void *)state->ip);
   goto err;
  }
  sp = state->regs->r13;
  break;

 case 138:
  if (!state->regs || !state->full_regs) {
   orc_warn("missing regs for base reg DI at ip %pB\n",
     (void *)state->ip);
   goto err;
  }
  sp = state->regs->di;
  break;

 case 137:
  if (!state->regs || !state->full_regs) {
   orc_warn("missing regs for base reg DX at ip %pB\n",
     (void *)state->ip);
   goto err;
  }
  sp = state->regs->dx;
  break;

 default:
  orc_warn("unknown SP base reg %d for ip %pB\n",
    orc->sp_reg, (void *)state->ip);
  goto err;
 }

 if (indirect) {
  if (!deref_stack_reg(state, sp, &sp))
   goto err;
 }


 switch (orc->type) {
 case 130:
  ip_p = sp - sizeof(long);

  if (!deref_stack_reg(state, ip_p, &state->ip))
   goto err;

  state->ip = ftrace_graph_ret_addr(state->task, &state->graph_idx,
        state->ip, (void *)ip_p);

  state->sp = sp;
  state->regs = ((void*)0);
  state->signal = 0;
  break;

 case 129:
  if (!deref_stack_regs(state, sp, &state->ip, &state->sp)) {
   orc_warn("can't dereference registers at %p for ip %pB\n",
     (void *)sp, (void *)orig_ip);
   goto err;
  }

  state->regs = (struct pt_regs *)sp;
  state->full_regs = 1;
  state->signal = 1;
  break;

 case 128:
  if (!deref_stack_iret_regs(state, sp, &state->ip, &state->sp)) {
   orc_warn("can't dereference iret registers at %p for ip %pB\n",
     (void *)sp, (void *)orig_ip);
   goto err;
  }

  state->regs = (void *)sp - IRET_FRAME_OFFSET;
  state->full_regs = 0;
  state->signal = 1;
  break;

 default:
  orc_warn("unknown .orc_unwind entry type %d for ip %pB\n",
    orc->type, (void *)orig_ip);
  break;
 }


 switch (orc->bp_reg) {
 case 131:
  if (state->regs && state->full_regs)
   state->bp = state->regs->bp;
  break;

 case 136:
  if (!deref_stack_reg(state, sp + orc->bp_offset, &state->bp))
   goto err;
  break;

 case 140:
  if (!deref_stack_reg(state, state->bp + orc->bp_offset, &state->bp))
   goto err;
  break;

 default:
  orc_warn("unknown BP base reg %d for ip %pB\n",
    orc->bp_reg, (void *)orig_ip);
  goto err;
 }


 if (state->stack_info.type == prev_type &&
     on_stack(&state->stack_info, (void *)state->sp, sizeof(long)) &&
     state->sp <= prev_sp) {
  orc_warn("stack going in the wrong direction? ip=%pB\n",
    (void *)orig_ip);
  goto err;
 }

 preempt_enable();
 return 1;

err:
 state->error = 1;

the_end:
 preempt_enable();
 state->stack_info.type = STACK_TYPE_UNKNOWN;
 return 0;
}
