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
struct pt_regs {unsigned int ret; unsigned int bta; unsigned int lp_end; unsigned int lp_start; scalar_t__ lp_count; int /*<<< orphan*/  status32; } ;
struct disasm_state {int zz; int /*<<< orphan*/ * words; scalar_t__ instr_len; scalar_t__ fault; int /*<<< orphan*/  write; scalar_t__ di; } ;
struct callee_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COUNT_SW_ALIGNMENT_FAULTS ; 
 int /*<<< orphan*/  STATUS_DE_MASK ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct disasm_state*,int,struct pt_regs*,struct callee_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct disasm_state*,struct pt_regs*,struct callee_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct disasm_state*,struct pt_regs*,struct callee_regs*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ no_unaligned_warning ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unaligned_enabled ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 

int FUNC11(unsigned long address, struct pt_regs *regs,
		     struct callee_regs *cregs)
{
	struct disasm_state state;
	char buf[TASK_COMM_LEN];

	/* handle user mode only and only if enabled by sysadmin */
	if (!FUNC10(regs) || !unaligned_enabled)
		return 1;

	if (no_unaligned_warning) {
		FUNC8("%s(%d) made unaligned access which was emulated"
			     " by kernel assist\n. This can degrade application"
			     " performance significantly\n. To enable further"
			     " logging of such instances, please \n"
			     " echo 0 > /proc/sys/kernel/ignore-unaligned-usertrap\n",
			     FUNC4(buf, current), FUNC9(current));
	} else {
		/* Add rate limiting if it gets down to it */
		FUNC7("%s(%d): unaligned access to/from 0x%lx by PC: 0x%lx\n",
			FUNC4(buf, current), FUNC9(current),
			address, regs->ret);

	}

	FUNC1(regs->ret, &state, 1, regs, cregs);

	if (state.fault)
		goto fault;

	/* ldb/stb should not have unaligned exception */
	if ((state.zz == 1) || (state.di))
		goto fault;

	if (!state.write)
		FUNC2(&state, regs, cregs);
	else
		FUNC3(&state, regs, cregs);

	if (state.fault)
		goto fault;

	/* clear any remanants of delay slot */
	if (FUNC0(regs)) {
		regs->ret = regs->bta & ~1U;
		regs->status32 &= ~STATUS_DE_MASK;
	} else {
		regs->ret += state.instr_len;

		/* handle zero-overhead-loop */
		if ((regs->ret == regs->lp_end) && (regs->lp_count)) {
			regs->ret = regs->lp_start;
			regs->lp_count--;
		}
	}

	FUNC5(PERF_COUNT_SW_ALIGNMENT_FAULTS, 1, regs, address);
	return 0;

fault:
	FUNC6("Alignment trap: fault in fix-up %08lx at [<%08lx>]\n",
		state.words[0], address);

	return 1;
}