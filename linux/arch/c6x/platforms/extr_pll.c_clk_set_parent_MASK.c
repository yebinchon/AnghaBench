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
struct clk {int /*<<< orphan*/  (* recalc ) (struct clk*) ;int /*<<< orphan*/  rate; int /*<<< orphan*/  children; struct clk* parent; int /*<<< orphan*/  childnode; int /*<<< orphan*/  usecount; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clockfw_lock ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct clk*) ; 

int FUNC10(struct clk *clk, struct clk *parent)
{
	unsigned long flags;

	if (clk == NULL || FUNC0(clk))
		return -EINVAL;

	/* Cannot change parent on enabled clock */
	if (FUNC1(clk->usecount))
		return -EINVAL;

	FUNC4(&clocks_mutex);
	clk->parent = parent;
	FUNC3(&clk->childnode);
	FUNC2(&clk->childnode, &clk->parent->children);
	FUNC5(&clocks_mutex);

	FUNC7(&clockfw_lock, flags);
	if (clk->recalc)
		clk->rate = clk->recalc(clk);
	FUNC6(clk);
	FUNC8(&clockfw_lock, flags);

	return 0;
}