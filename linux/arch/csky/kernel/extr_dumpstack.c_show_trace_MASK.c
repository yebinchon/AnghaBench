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

/* Variables and functions */
 unsigned long THREAD_MASK ; 
 scalar_t__ THREAD_SIZE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(unsigned long *stack)
{
	unsigned long *stack_end;
	unsigned long *stack_start;
	unsigned long *fp;
	unsigned long addr;

	addr = (unsigned long) stack & THREAD_MASK;
	stack_start = (unsigned long *) addr;
	stack_end = (unsigned long *) (addr + THREAD_SIZE);

	fp = stack;
	FUNC2("\nCall Trace:");

	while (fp > stack_start && fp < stack_end) {
#ifdef CONFIG_STACKTRACE
		addr	= fp[1];
		fp	= (unsigned long *) fp[0];
#else
		addr	= *fp++;
#endif
		if (FUNC0(addr))
			FUNC1("\n[<%08lx>] %pS", addr, (void *)addr);
	}
	FUNC1("\n");
}