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
struct clk_duty {unsigned int num; unsigned int den; } ;
struct clk {int /*<<< orphan*/  core; scalar_t__ exclusive_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct clk_duty*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct clk *clk, unsigned int num, unsigned int den)
{
	int ret;
	struct clk_duty duty;

	if (!clk)
		return 0;

	/* sanity check the ratio */
	if (den == 0 || num > den)
		return -EINVAL;

	duty.num = num;
	duty.den = den;

	FUNC3();

	if (clk->exclusive_count)
		FUNC1(clk->core);

	ret = FUNC2(clk->core, &duty);

	if (clk->exclusive_count)
		FUNC0(clk->core);

	FUNC4();

	return ret;
}