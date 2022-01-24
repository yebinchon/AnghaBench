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
struct task_struct {int dummy; } ;
typedef  int s32 ;
struct TYPE_2__ {unsigned long* bpt_addr; unsigned int* bpt_insn; int bpt_nsaved; } ;

/* Variables and functions */
 int /*<<< orphan*/  BREAKINST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DBG_BPT ; 
 int REG_PC ; 
 void* FUNC1 (struct task_struct*,int) ; 
 int FUNC2 (struct task_struct*,unsigned long,int*) ; 
 TYPE_1__* FUNC3 (struct task_struct*) ; 
 int FUNC4 (struct task_struct*,unsigned long,int /*<<< orphan*/ ) ; 

int
FUNC5(struct task_struct * child)
{
	int displ, i, res, reg_b, nsaved = 0;
	unsigned int insn, op_code;
	unsigned long pc;

	pc  = FUNC1(child, REG_PC);
	res = FUNC2(child, pc, (int *) &insn);
	if (res < 0)
		return res;

	op_code = insn >> 26;
	if (op_code >= 0x30) {
		/*
		 * It's a branch: instead of trying to figure out
		 * whether the branch will be taken or not, we'll put
		 * a breakpoint at either location.  This is simpler,
		 * more reliable, and probably not a whole lot slower
		 * than the alternative approach of emulating the
		 * branch (emulation can be tricky for fp branches).
		 */
		displ = ((s32)(insn << 11)) >> 9;
		FUNC3(child)->bpt_addr[nsaved++] = pc + 4;
		if (displ)		/* guard against unoptimized code */
			FUNC3(child)->bpt_addr[nsaved++]
			  = pc + 4 + displ;
		FUNC0(DBG_BPT, ("execing branch\n"));
	} else if (op_code == 0x1a) {
		reg_b = (insn >> 16) & 0x1f;
		FUNC3(child)->bpt_addr[nsaved++] = FUNC1(child, reg_b);
		FUNC0(DBG_BPT, ("execing jump\n"));
	} else {
		FUNC3(child)->bpt_addr[nsaved++] = pc + 4;
		FUNC0(DBG_BPT, ("execing normal insn\n"));
	}

	/* install breakpoints: */
	for (i = 0; i < nsaved; ++i) {
		res = FUNC2(child, FUNC3(child)->bpt_addr[i],
			       (int *) &insn);
		if (res < 0)
			return res;
		FUNC3(child)->bpt_insn[i] = insn;
		FUNC0(DBG_BPT, ("    -> next_pc=%lx\n",
			      FUNC3(child)->bpt_addr[i]));
		res = FUNC4(child, FUNC3(child)->bpt_addr[i],
				BREAKINST);
		if (res < 0)
			return res;
	}
	FUNC3(child)->bpt_nsaved = nsaved;
	return 0;
}