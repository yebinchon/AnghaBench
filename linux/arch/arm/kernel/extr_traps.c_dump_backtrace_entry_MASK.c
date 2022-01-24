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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,...) ; 

void FUNC3(unsigned long where, unsigned long from, unsigned long frame)
{
#ifdef CONFIG_KALLSYMS
	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
#else
	FUNC2("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
#endif

	if (FUNC1(from))
		FUNC0("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
}