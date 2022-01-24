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
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;
struct clk_branch {int halt_check; TYPE_1__ clkr; } ;

/* Variables and functions */
 int BRANCH_HALT ; 
 int BRANCH_HALT_DELAY ; 
 int BRANCH_HALT_ENABLE ; 
 int BRANCH_HALT_SKIP ; 
 int BRANCH_VOTED ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char*) ; 
 scalar_t__ FUNC1 (struct clk_branch const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const struct clk_branch *br, bool enabling,
		bool (check_halt)(const struct clk_branch *, bool))
{
	bool voted = br->halt_check & BRANCH_VOTED;
	const char *name = FUNC2(&br->clkr.hw);

	/*
	 * Skip checking halt bit if we're explicitly ignoring the bit or the
	 * clock is in hardware gated mode
	 */
	if (br->halt_check == BRANCH_HALT_SKIP || FUNC1(br))
		return 0;

	if (br->halt_check == BRANCH_HALT_DELAY || (!enabling && voted)) {
		FUNC3(10);
	} else if (br->halt_check == BRANCH_HALT_ENABLE ||
		   br->halt_check == BRANCH_HALT ||
		   (enabling && voted)) {
		int count = 200;

		while (count-- > 0) {
			if (check_halt(br, enabling))
				return 0;
			FUNC3(1);
		}
		FUNC0(1, "%s status stuck at 'o%s'", name,
				enabling ? "ff" : "n");
		return -EBUSY;
	}
	return 0;
}