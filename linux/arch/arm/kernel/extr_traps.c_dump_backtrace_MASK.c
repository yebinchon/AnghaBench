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
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 unsigned int FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned int FUNC5 (struct pt_regs*) ; 
 unsigned int FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(struct pt_regs *regs, struct task_struct *tsk)
{
	unsigned int fp, mode;
	int ok = 1;

	FUNC4("Backtrace: ");

	if (!tsk)
		tsk = current;

	if (regs) {
		fp = FUNC2(regs);
		mode = FUNC5(regs);
	} else if (tsk != current) {
		fp = FUNC6(tsk);
		mode = 0x10;
	} else {
		asm("mov %0, fp" : "=r" (fp) : : "cc");
		mode = 0x10;
	}

	if (!fp) {
		FUNC3("no frame pointer");
		ok = 0;
	} else if (FUNC7(fp)) {
		FUNC3("invalid frame pointer 0x%08x", fp);
		ok = 0;
	} else if (fp < (unsigned long)FUNC1(tsk))
		FUNC3("frame pointer underflow");
	FUNC3("\n");

	if (ok)
		FUNC0(fp, mode);
}