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
typedef  int u64 ;
struct TYPE_2__ {int is_ftrace_insn; int /*<<< orphan*/ * insn; } ;
struct kprobe {int* addr; TYPE_1__ ainsn; int /*<<< orphan*/  opcode; } ;
struct ftrace_insn {int dummy; } ;
typedef  int s64 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ftrace_insn*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct kprobe *p)
{
	unsigned long ip = (unsigned long) p->addr;
	s64 disp, new_disp;
	u64 addr, new_addr;

	if (FUNC1(ip) == ip) {
		/*
		 * If kprobes patches the instruction that is morphed by
		 * ftrace make sure that kprobes always sees the branch
		 * "jg .+24" that skips the mcount block or the "brcl 0,0"
		 * in case of hotpatch.
		 */
		FUNC0((struct ftrace_insn *)p->ainsn.insn);
		p->ainsn.is_ftrace_insn = 1;
	} else
		FUNC3(p->ainsn.insn, p->addr, FUNC2(*p->addr >> 8));
	p->opcode = p->ainsn.insn[0];
	if (!FUNC4(p->ainsn.insn))
		return;
	/*
	 * For pc-relative instructions in RIL-b or RIL-c format patch the
	 * RI2 displacement field. We have already made sure that the insn
	 * slot for the patched instruction is within the same 2GB area
	 * as the original instruction (either kernel image or module area).
	 * Therefore the new displacement will always fit.
	 */
	disp = *(s32 *)&p->ainsn.insn[1];
	addr = (u64)(unsigned long)p->addr;
	new_addr = (u64)(unsigned long)p->ainsn.insn;
	new_disp = ((addr + (disp * 2)) - new_addr) / 2;
	*(s32 *)&p->ainsn.insn[1] = new_disp;
}