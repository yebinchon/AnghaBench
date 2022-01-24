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
struct clk {scalar_t__ exclusive_count; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct clk *clk)
{
	if (!clk)
		return;

	FUNC2();

	/*
	 * if there is something wrong with this consumer protect count, stop
	 * here before messing with the provider
	 */
	if (FUNC0(clk->exclusive_count <= 0))
		goto out;

	FUNC1(clk->core);
	clk->exclusive_count--;
out:
	FUNC3();
}