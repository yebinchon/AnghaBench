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
struct clk {int /*<<< orphan*/  exclusive_count; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct clk *clk, unsigned long rate)
{
	int ret;

	if (!clk)
		return 0;

	/* prevent racing with updates to the clock topology */
	FUNC2();

	/*
	 * The temporary protection removal is not here, on purpose
	 * This function is meant to be used instead of clk_rate_protect,
	 * so before the consumer code path protect the clock provider
	 */

	ret = FUNC1(clk->core, rate);
	if (!ret) {
		FUNC0(clk->core);
		clk->exclusive_count++;
	}

	FUNC3();

	return ret;
}