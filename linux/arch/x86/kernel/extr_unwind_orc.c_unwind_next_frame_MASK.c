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
struct TYPE_2__ {int type; } ;
struct unwind_state {unsigned long ip; unsigned long sp; int signal; int error; unsigned long bp; int full_regs; TYPE_1__ stack_info; struct pt_regs* regs; int /*<<< orphan*/  graph_idx; int /*<<< orphan*/  task; } ;
struct pt_regs {unsigned long r10; unsigned long r13; unsigned long di; unsigned long dx; unsigned long bp; } ;
struct orc_entry {int sp_reg; unsigned long sp_offset; int type; int bp_reg; unsigned long bp_offset; int /*<<< orphan*/  end; } ;
typedef  enum stack_type { ____Placeholder_stack_type } stack_type ;

/* Variables and functions */
 int /*<<< orphan*/  IRET_FRAME_OFFSET ; 
#define  ORC_REG_BP 140 
#define  ORC_REG_BP_INDIRECT 139 
#define  ORC_REG_DI 138 
#define  ORC_REG_DX 137 
#define  ORC_REG_PREV_SP 136 
#define  ORC_REG_R10 135 
#define  ORC_REG_R13 134 
#define  ORC_REG_SP 133 
#define  ORC_REG_SP_INDIRECT 132 
#define  ORC_REG_UNDEFINED 131 
#define  ORC_TYPE_CALL 130 
#define  ORC_TYPE_REGS 129 
#define  ORC_TYPE_REGS_IRET 128 
 int STACK_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct unwind_state*,unsigned long,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct unwind_state*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct unwind_state*,unsigned long,unsigned long*,unsigned long*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,void*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,void*,int) ; 
 struct orc_entry* FUNC5 (int) ; 
 struct orc_entry orc_fp_entry ; 
 int /*<<< orphan*/  FUNC6 (char*,void*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct unwind_state*) ; 
 scalar_t__ FUNC10 (struct pt_regs*) ; 

bool FUNC11(struct unwind_state *state)
{
	unsigned long ip_p, sp, orig_ip = state->ip, prev_sp = state->sp;
	enum stack_type prev_type = state->stack_info.type;
	struct orc_entry *orc;
	bool indirect = false;

	if (FUNC9(state))
		return false;

	/* Don't let modules unload while we're reading their ORC data. */
	FUNC7();

	/* End-of-stack check for user tasks: */
	if (state->regs && FUNC10(state->regs))
		goto the_end;

	/*
	 * Find the orc_entry associated with the text address.
	 *
	 * Decrement call return addresses by one so they work for sibling
	 * calls and calls to noreturn functions.
	 */
	orc = FUNC5(state->signal ? state->ip : state->ip - 1);
	if (!orc) {
		/*
		 * As a fallback, try to assume this code uses a frame pointer.
		 * This is useful for generated code, like BPF, which ORC
		 * doesn't know about.  This is just a guess, so the rest of
		 * the unwind is no longer considered reliable.
		 */
		orc = &orc_fp_entry;
		state->error = true;
	}

	/* End-of-stack check for kernel threads: */
	if (orc->sp_reg == ORC_REG_UNDEFINED) {
		if (!orc->end)
			goto err;

		goto the_end;
	}

	/* Find the previous frame's stack: */
	switch (orc->sp_reg) {
	case ORC_REG_SP:
		sp = state->sp + orc->sp_offset;
		break;

	case ORC_REG_BP:
		sp = state->bp + orc->sp_offset;
		break;

	case ORC_REG_SP_INDIRECT:
		sp = state->sp + orc->sp_offset;
		indirect = true;
		break;

	case ORC_REG_BP_INDIRECT:
		sp = state->bp + orc->sp_offset;
		indirect = true;
		break;

	case ORC_REG_R10:
		if (!state->regs || !state->full_regs) {
			FUNC6("missing regs for base reg R10 at ip %pB\n",
				 (void *)state->ip);
			goto err;
		}
		sp = state->regs->r10;
		break;

	case ORC_REG_R13:
		if (!state->regs || !state->full_regs) {
			FUNC6("missing regs for base reg R13 at ip %pB\n",
				 (void *)state->ip);
			goto err;
		}
		sp = state->regs->r13;
		break;

	case ORC_REG_DI:
		if (!state->regs || !state->full_regs) {
			FUNC6("missing regs for base reg DI at ip %pB\n",
				 (void *)state->ip);
			goto err;
		}
		sp = state->regs->di;
		break;

	case ORC_REG_DX:
		if (!state->regs || !state->full_regs) {
			FUNC6("missing regs for base reg DX at ip %pB\n",
				 (void *)state->ip);
			goto err;
		}
		sp = state->regs->dx;
		break;

	default:
		FUNC6("unknown SP base reg %d for ip %pB\n",
			 orc->sp_reg, (void *)state->ip);
		goto err;
	}

	if (indirect) {
		if (!FUNC1(state, sp, &sp))
			goto err;
	}

	/* Find IP, SP and possibly regs: */
	switch (orc->type) {
	case ORC_TYPE_CALL:
		ip_p = sp - sizeof(long);

		if (!FUNC1(state, ip_p, &state->ip))
			goto err;

		state->ip = FUNC3(state->task, &state->graph_idx,
						  state->ip, (void *)ip_p);

		state->sp = sp;
		state->regs = NULL;
		state->signal = false;
		break;

	case ORC_TYPE_REGS:
		if (!FUNC2(state, sp, &state->ip, &state->sp)) {
			FUNC6("can't dereference registers at %p for ip %pB\n",
				 (void *)sp, (void *)orig_ip);
			goto err;
		}

		state->regs = (struct pt_regs *)sp;
		state->full_regs = true;
		state->signal = true;
		break;

	case ORC_TYPE_REGS_IRET:
		if (!FUNC0(state, sp, &state->ip, &state->sp)) {
			FUNC6("can't dereference iret registers at %p for ip %pB\n",
				 (void *)sp, (void *)orig_ip);
			goto err;
		}

		state->regs = (void *)sp - IRET_FRAME_OFFSET;
		state->full_regs = false;
		state->signal = true;
		break;

	default:
		FUNC6("unknown .orc_unwind entry type %d for ip %pB\n",
			 orc->type, (void *)orig_ip);
		break;
	}

	/* Find BP: */
	switch (orc->bp_reg) {
	case ORC_REG_UNDEFINED:
		if (state->regs && state->full_regs)
			state->bp = state->regs->bp;
		break;

	case ORC_REG_PREV_SP:
		if (!FUNC1(state, sp + orc->bp_offset, &state->bp))
			goto err;
		break;

	case ORC_REG_BP:
		if (!FUNC1(state, state->bp + orc->bp_offset, &state->bp))
			goto err;
		break;

	default:
		FUNC6("unknown BP base reg %d for ip %pB\n",
			 orc->bp_reg, (void *)orig_ip);
		goto err;
	}

	/* Prevent a recursive loop due to bad ORC data: */
	if (state->stack_info.type == prev_type &&
	    FUNC4(&state->stack_info, (void *)state->sp, sizeof(long)) &&
	    state->sp <= prev_sp) {
		FUNC6("stack going in the wrong direction? ip=%pB\n",
			 (void *)orig_ip);
		goto err;
	}

	FUNC8();
	return true;

err:
	state->error = true;

the_end:
	FUNC8();
	state->stack_info.type = STACK_TYPE_UNKNOWN;
	return false;
}