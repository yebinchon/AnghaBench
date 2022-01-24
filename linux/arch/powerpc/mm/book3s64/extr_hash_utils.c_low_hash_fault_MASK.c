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
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ADRERR ; 
 int /*<<< orphan*/  SEGV_ACCERR ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

void FUNC5(struct pt_regs *regs, unsigned long address, int rc)
{
	enum ctx_state prev_state = FUNC2();

	if (FUNC4(regs)) {
#ifdef CONFIG_PPC_SUBPAGE_PROT
		if (rc == -2)
			_exception(SIGSEGV, regs, SEGV_ACCERR, address);
		else
#endif
			FUNC0(SIGBUS, regs, BUS_ADRERR, address);
	} else
		FUNC1(regs, address, SIGBUS);

	FUNC3(prev_state);
}