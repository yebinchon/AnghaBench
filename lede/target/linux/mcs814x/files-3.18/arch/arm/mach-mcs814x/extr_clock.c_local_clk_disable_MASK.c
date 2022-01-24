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
struct clk {scalar_t__ usecount; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct clk*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clk *clk)
{
	FUNC0(!clk->usecount);

	if (clk->usecount > 0) {
		clk->usecount--;

		if ((clk->usecount == 0) && (clk->ops->enable))
			clk->ops->enable(clk, 0);

		if (clk->parent)
			FUNC2(clk->parent);
	}
}