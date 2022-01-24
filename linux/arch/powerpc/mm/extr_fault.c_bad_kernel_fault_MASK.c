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
struct pt_regs {int /*<<< orphan*/  nip; } ;

/* Variables and functions */
 unsigned long DSISR_KEYFAULT ; 
 unsigned long DSISR_NOEXEC_OR_G ; 
 unsigned long DSISR_PROTFAULT ; 
 unsigned long TASK_SIZE ; 
 int FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct pt_regs *regs, unsigned long error_code,
			     unsigned long address, bool is_write)
{
	int is_exec = FUNC0(regs) == 0x400;

	/* NX faults set DSISR_PROTFAULT on the 8xx, DSISR_NOEXEC_OR_G on others */
	if (is_exec && (error_code & (DSISR_NOEXEC_OR_G | DSISR_KEYFAULT |
				      DSISR_PROTFAULT))) {
		FUNC4("kernel tried to execute %s page (%lx) - exploit attempt? (uid: %d)\n",
				    address >= TASK_SIZE ? "exec-protected" : "user",
				    address,
				    FUNC3(&init_user_ns, FUNC2()));

		// Kernel exec fault is always bad
		return true;
	}

	if (!is_exec && address < TASK_SIZE && (error_code & DSISR_PROTFAULT) &&
	    !FUNC5(regs->nip)) {
		FUNC4("Kernel attempted to access user page (%lx) - exploit attempt? (uid: %d)\n",
				    address,
				    FUNC3(&init_user_ns, FUNC2()));
	}

	// Kernel fault on kernel address is bad
	if (address >= TASK_SIZE)
		return true;

	// Fault on user outside of certain regions (eg. copy_tofrom_user()) is bad
	if (!FUNC5(regs->nip))
		return true;

	// Read/write fault in a valid region (the exception table search passed
	// above), but blocked by KUAP is bad, it can never succeed.
	if (FUNC1(regs, is_write))
		return true;

	// What's left? Kernel fault on user in well defined regions (extable
	// matched), and allowed by KUAP in the faulting context.
	return false;
}