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
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clockfw_lock ; 
 int FUNC1 (struct clk*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct clk *clk, unsigned long rate)
{
	unsigned long flags;
	int ret = -EINVAL;

	if (clk == NULL || FUNC0(clk))
		return ret;

	FUNC3(&clockfw_lock, flags);
	ret = FUNC1(clk, rate);
	if (ret == 0)
		FUNC2(clk);
	FUNC4(&clockfw_lock, flags);

	return ret;
}