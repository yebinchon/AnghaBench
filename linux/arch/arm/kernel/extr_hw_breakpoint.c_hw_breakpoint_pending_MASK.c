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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  ARM_ENTRY_ASYNC_WATCHPOINT 130 
#define  ARM_ENTRY_BREAKPOINT 129 
#define  ARM_ENTRY_SYNC_WATCHPOINT 128 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct pt_regs*) ; 
 int /*<<< orphan*/  c0 ; 
 int /*<<< orphan*/  c1 ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned int,struct pt_regs*) ; 

__attribute__((used)) static int FUNC9(unsigned long addr, unsigned int fsr,
				 struct pt_regs *regs)
{
	int ret = 0;
	u32 dscr;

	FUNC6();

	if (FUNC4(regs))
		FUNC5();

	/* We only handle watchpoints and hardware breakpoints. */
	FUNC0(c0, c1, 0, dscr);

	/* Perform perf callbacks. */
	switch (FUNC1(dscr)) {
	case ARM_ENTRY_BREAKPOINT:
		FUNC3(addr, regs);
		break;
	case ARM_ENTRY_ASYNC_WATCHPOINT:
		FUNC2(1, "Asynchronous watchpoint exception taken. Debugging results may be unreliable\n");
		/* Fall through */
	case ARM_ENTRY_SYNC_WATCHPOINT:
		FUNC8(addr, fsr, regs);
		break;
	default:
		ret = 1; /* Unhandled fault. */
	}

	FUNC7();

	return ret;
}