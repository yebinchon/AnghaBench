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
struct task_struct {char const* comm; int pid; } ;
struct pt_regs {int sp; } ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct pt_regs*) ; 

void FUNC15(const char *str, struct pt_regs *regs, int err)
{
	struct task_struct *tsk = current;
	static int die_counter;

	FUNC1();
	FUNC12(&die_lock);
	FUNC0(1);

	FUNC8("Internal error: %s: %x [#%d]\n", str, err, ++die_counter);
	FUNC9();
	FUNC8("CPU: %i\n", FUNC11());
	FUNC10(regs);
	FUNC8("Process %s (pid: %d, stack limit = 0x%p)\n",
		 tsk->comm, tsk->pid, FUNC6(tsk));

	if (!FUNC14(regs) || FUNC7()) {
		FUNC4("Stack: ", regs->sp, (regs->sp + PAGE_SIZE) & PAGE_MASK);
		FUNC3(regs);
		FUNC5();
	}

	FUNC0(0);
	FUNC13(&die_lock);
	FUNC2(SIGSEGV);
}