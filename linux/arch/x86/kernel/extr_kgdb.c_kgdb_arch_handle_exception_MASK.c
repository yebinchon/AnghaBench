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
struct pt_regs {unsigned long ip; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kgdb_cpu_doing_single_step ; 
 int /*<<< orphan*/  FUNC1 (char**,unsigned long*) ; 
 int FUNC2 () ; 

int FUNC3(int e_vector, int signo, int err_code,
			       char *remcomInBuffer, char *remcomOutBuffer,
			       struct pt_regs *linux_regs)
{
	unsigned long addr;
	char *ptr;

	switch (remcomInBuffer[0]) {
	case 'c':
	case 's':
		/* try to read optional parameter, pc unchanged if no parm */
		ptr = &remcomInBuffer[1];
		if (FUNC1(&ptr, &addr))
			linux_regs->ip = addr;
		/* fall through */
	case 'D':
	case 'k':
		/* clear the trace bit */
		linux_regs->flags &= ~X86_EFLAGS_TF;
		FUNC0(&kgdb_cpu_doing_single_step, -1);

		/* set the trace bit if we're stepping */
		if (remcomInBuffer[0] == 's') {
			linux_regs->flags |= X86_EFLAGS_TF;
			FUNC0(&kgdb_cpu_doing_single_step,
				   FUNC2());
		}

		return 0;
	}

	/* this means that we do not want to exit from the handler: */
	return -1;
}