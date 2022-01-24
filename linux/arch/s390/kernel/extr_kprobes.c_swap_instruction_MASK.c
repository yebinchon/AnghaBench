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
struct swap_insn_args {scalar_t__ arm_kprobe; struct kprobe* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_ftrace_insn; } ;
struct kprobe {scalar_t__ addr; TYPE_1__ ainsn; int /*<<< orphan*/  opcode; } ;
struct ftrace_insn {scalar_t__ disp; int /*<<< orphan*/  opc; } ;
typedef  int /*<<< orphan*/  new_insn ;

/* Variables and functions */
 int /*<<< orphan*/  BREAKPOINT_INSTRUCTION ; 
 scalar_t__ KPROBE_ON_FTRACE_CALL ; 
 scalar_t__ KPROBE_ON_FTRACE_NOP ; 
 int /*<<< orphan*/  FUNC0 (struct ftrace_insn*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_insn*) ; 
 scalar_t__ FUNC2 (struct ftrace_insn*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct ftrace_insn*,size_t) ; 

__attribute__((used)) static int FUNC4(void *data)
{
	struct swap_insn_args *args = data;
	struct ftrace_insn new_insn, *insn;
	struct kprobe *p = args->p;
	size_t len;

	new_insn.opc = args->arm_kprobe ? BREAKPOINT_INSTRUCTION : p->opcode;
	len = sizeof(new_insn.opc);
	if (!p->ainsn.is_ftrace_insn)
		goto skip_ftrace;
	len = sizeof(new_insn);
	insn = (struct ftrace_insn *) p->addr;
	if (args->arm_kprobe) {
		if (FUNC2(insn))
			new_insn.disp = KPROBE_ON_FTRACE_NOP;
		else
			new_insn.disp = KPROBE_ON_FTRACE_CALL;
	} else {
		FUNC0(&new_insn, (unsigned long)p->addr);
		if (insn->disp == KPROBE_ON_FTRACE_NOP)
			FUNC1(&new_insn);
	}
skip_ftrace:
	FUNC3(p->addr, &new_insn, len);
	return 0;
}