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
struct clk {TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long (* round_rate ) (struct clk*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  clock_lock ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (struct clk*,unsigned long) ; 

long FUNC4(struct clk *clk, unsigned long rate)
{
	if (FUNC0(clk->ops && clk->ops->round_rate)) {
		unsigned long flags, rounded;

		FUNC1(&clock_lock, flags);
		rounded = clk->ops->round_rate(clk, rate);
		FUNC2(&clock_lock, flags);

		return rounded;
	}

	return rate;
}