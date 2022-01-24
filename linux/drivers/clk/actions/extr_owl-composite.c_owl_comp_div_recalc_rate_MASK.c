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
struct TYPE_2__ {int /*<<< orphan*/  div_hw; } ;
struct owl_composite {TYPE_1__ rate; int /*<<< orphan*/  common; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct owl_composite* FUNC0 (struct clk_hw*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
					  unsigned long parent_rate)
{
	struct owl_composite *comp = FUNC0(hw);

	return FUNC1(&comp->common, &comp->rate.div_hw,
					parent_rate);
}