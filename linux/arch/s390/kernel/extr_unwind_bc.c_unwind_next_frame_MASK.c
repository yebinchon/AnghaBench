#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stack_info {int /*<<< orphan*/  type; } ;
struct unwind_state {int reuse_sp; unsigned long sp; unsigned long ip; int reliable; int error; struct stack_info stack_info; struct pt_regs* regs; int /*<<< orphan*/  graph_idx; int /*<<< orphan*/  task; } ;
struct stack_frame {int /*<<< orphan*/ * gprs; int /*<<< orphan*/  back_chain; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  mask; } ;
struct pt_regs {TYPE_1__ psw; int /*<<< orphan*/ * gprs; } ;

/* Variables and functions */
 int PSW_MASK_PSTATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long STACK_FRAME_OVERHEAD ; 
 int /*<<< orphan*/  STACK_TYPE_UNKNOWN ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,void*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct stack_info*,unsigned long,int) ; 
 struct pt_regs* FUNC4 (struct unwind_state*,unsigned long) ; 
 scalar_t__ return_to_handler ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (struct unwind_state*,unsigned long) ; 

bool FUNC7(struct unwind_state *state)
{
	struct stack_info *info = &state->stack_info;
	struct stack_frame *sf;
	struct pt_regs *regs;
	unsigned long sp, ip;
	bool reliable;

	regs = state->regs;
	if (FUNC5(regs)) {
		if (state->reuse_sp) {
			sp = state->sp;
			state->reuse_sp = false;
		} else {
			sp = FUNC0(regs->gprs[15]);
			if (FUNC5(FUNC4(state, sp))) {
				if (!FUNC6(state, sp))
					goto out_err;
			}
		}
		sf = (struct stack_frame *) sp;
		ip = FUNC0(sf->gprs[8]);
		reliable = false;
		regs = NULL;
	} else {
		sf = (struct stack_frame *) state->sp;
		sp = FUNC0(sf->back_chain);
		if (FUNC2(sp)) {
			/* Non-zero back-chain points to the previous frame */
			if (FUNC5(FUNC4(state, sp))) {
				if (!FUNC6(state, sp))
					goto out_err;
			}
			sf = (struct stack_frame *) sp;
			ip = FUNC0(sf->gprs[8]);
			reliable = true;
		} else {
			/* No back-chain, look for a pt_regs structure */
			sp = state->sp + STACK_FRAME_OVERHEAD;
			if (!FUNC3(info, sp, sizeof(struct pt_regs)))
				goto out_stop;
			regs = (struct pt_regs *) sp;
			if (FUNC0(regs->psw.mask) & PSW_MASK_PSTATE)
				goto out_stop;
			ip = FUNC0(regs->psw.addr);
			reliable = true;
		}
	}

#ifdef CONFIG_FUNCTION_GRAPH_TRACER
	/* Decode any ftrace redirection */
	if (ip == (unsigned long) return_to_handler)
		ip = ftrace_graph_ret_addr(state->task, &state->graph_idx,
					   ip, (void *) sp);
#endif

	/* Update unwind state */
	state->sp = sp;
	state->ip = ip;
	state->regs = regs;
	state->reliable = reliable;
	return true;

out_err:
	state->error = true;
out_stop:
	state->stack_info.type = STACK_TYPE_UNKNOWN;
	return false;
}