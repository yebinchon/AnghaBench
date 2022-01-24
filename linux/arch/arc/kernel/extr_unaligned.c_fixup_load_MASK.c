#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pt_regs {int dummy; } ;
struct disasm_state {int aa; int src1; int src2; scalar_t__ zz; scalar_t__ pref; int fault; int /*<<< orphan*/  dest; scalar_t__ x; int /*<<< orphan*/  wb_reg; } ;
struct callee_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct pt_regs*,struct callee_regs*) ; 

__attribute__((used)) static void FUNC3(struct disasm_state *state, struct pt_regs *regs,
			struct callee_regs *cregs)
{
	int val;

	/* register write back */
	if ((state->aa == 1) || (state->aa == 2)) {
		FUNC2(state->wb_reg, state->src1 + state->src2, regs, cregs);

		if (state->aa == 2)
			state->src2 = 0;
	}

	if (state->zz == 0) {
		FUNC1(val, state->src1 + state->src2);
	} else {
		FUNC0(val, state->src1 + state->src2);

		if (state->x)
			val = (val << 16) >> 16;
	}

	if (state->pref == 0)
		FUNC2(state->dest, val, regs, cregs);

	return;

fault:	state->fault = 1;
}