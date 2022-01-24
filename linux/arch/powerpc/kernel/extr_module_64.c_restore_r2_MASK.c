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
typedef  scalar_t__ u32 ;
struct module {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ PPC_INST_LD_TOC ; 
 scalar_t__ PPC_INST_NOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(const char *name, u32 *instruction, struct module *me)
{
	u32 *prev_insn = instruction - 1;

	if (FUNC1(name, prev_insn))
		return 1;

	/*
	 * Make sure the branch isn't a sibling call.  Sibling calls aren't
	 * "link" branches and they don't return, so they don't need the r2
	 * restore afterwards.
	 */
	if (!FUNC0(*prev_insn))
		return 1;

	if (*instruction != PPC_INST_NOP) {
		FUNC2("%s: Expected nop after call, got %08x at %pS\n",
			me->name, *instruction, instruction);
		return 0;
	}
	/* ld r2,R2_STACK_OFFSET(r1) */
	*instruction = PPC_INST_LD_TOC;
	return 1;
}