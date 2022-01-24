#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long line_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCTL_CMD_L2_PA_WBINVAL ; 
 size_t DCACHE ; 
 TYPE_1__* L1_cache_info ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(unsigned long start, unsigned long end)
{
	unsigned long line_size;
	unsigned long flags;
	line_size = L1_cache_info[DCACHE].line_size;
	start = start & (~(line_size - 1));
	end = (end + line_size - 1) & (~(line_size - 1));
	if (FUNC5(start == end))
		return;

	FUNC4(flags);
	FUNC1(start, end);
	FUNC2(start, end, CCTL_CMD_L2_PA_WBINVAL);
	FUNC0();
	FUNC3(flags);
}