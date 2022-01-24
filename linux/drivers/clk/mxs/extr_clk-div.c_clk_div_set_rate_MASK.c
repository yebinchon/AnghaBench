#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;
struct clk_div {int /*<<< orphan*/  busy; int /*<<< orphan*/  reg; TYPE_2__ divider; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_rate ) (int /*<<< orphan*/ *,unsigned long,unsigned long) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 struct clk_div* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
			    unsigned long parent_rate)
{
	struct clk_div *div = FUNC2(hw);
	int ret;

	ret = div->ops->set_rate(&div->divider.hw, rate, parent_rate);
	if (!ret)
		ret = FUNC0(div->reg, div->busy);

	return ret;
}