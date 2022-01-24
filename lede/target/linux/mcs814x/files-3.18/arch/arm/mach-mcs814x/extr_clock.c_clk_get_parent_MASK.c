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
struct clk {struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {struct clk* (* get_parent ) (struct clk*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk* FUNC3 (struct clk*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

struct clk *FUNC5(struct clk *clk)
{
	unsigned long flags;

	if (FUNC4(FUNC0(clk)))
		return NULL;

	if (!clk->ops || !clk->ops->get_parent)
		return clk->parent;

	FUNC1(&clocks_lock, flags);
	clk->parent = clk->ops->get_parent(clk);
	FUNC2(&clocks_lock, flags);

	return clk->parent;
}