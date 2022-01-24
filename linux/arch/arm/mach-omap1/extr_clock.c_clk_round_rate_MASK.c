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
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clockfw_lock ; 
 long FUNC1 (struct clk*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

long FUNC4(struct clk *clk, unsigned long rate)
{
	unsigned long flags;
	long ret;

	if (clk == NULL || FUNC0(clk))
		return 0;

	FUNC2(&clockfw_lock, flags);
	ret = FUNC1(clk, rate);
	FUNC3(&clockfw_lock, flags);

	return ret;
}