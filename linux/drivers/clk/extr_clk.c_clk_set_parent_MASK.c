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
struct clk {int /*<<< orphan*/ * core; scalar_t__ exclusive_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct clk *clk, struct clk *parent)
{
	int ret;

	if (!clk)
		return 0;

	FUNC3();

	if (clk->exclusive_count)
		FUNC1(clk->core);

	ret = FUNC2(clk->core,
					 parent ? parent->core : NULL);

	if (clk->exclusive_count)
		FUNC0(clk->core);

	FUNC4();

	return ret;
}