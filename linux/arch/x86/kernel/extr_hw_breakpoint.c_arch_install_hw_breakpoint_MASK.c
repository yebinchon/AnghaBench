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
struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {unsigned long address; scalar_t__ mask; int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EBUSY ; 
 int HBP_NUM ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * bp_per_reg ; 
 struct arch_hw_breakpoint* FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/ * cpu_debugreg ; 
 int /*<<< orphan*/  cpu_dr7 ; 
 unsigned long FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct perf_event *bp)
{
	struct arch_hw_breakpoint *info = FUNC2(bp);
	unsigned long *dr7;
	int i;

	for (i = 0; i < HBP_NUM; i++) {
		struct perf_event **slot = FUNC6(&bp_per_reg[i]);

		if (!*slot) {
			*slot = bp;
			break;
		}
	}

	if (FUNC0(i == HBP_NUM, "Can't find any breakpoint slot"))
		return -EBUSY;

	FUNC4(info->address, i);
	FUNC1(cpu_debugreg[i], info->address);

	dr7 = FUNC6(&cpu_dr7);
	*dr7 |= FUNC3(i, info->len, info->type);

	FUNC4(*dr7, 7);
	if (info->mask)
		FUNC5(info->mask, i);

	return 0;
}