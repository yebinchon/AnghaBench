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
typedef  size_t u8 ;
struct r9a06g032_clk_dualgate {TYPE_1__* gate; int /*<<< orphan*/  clocks; int /*<<< orphan*/  selector; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gate; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct r9a06g032_clk_dualgate* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct r9a06g032_clk_dualgate *g = FUNC1(hw);
	u8 sel_bit = FUNC0(g->clocks, g->selector);

	return FUNC0(g->clocks, g->gate[sel_bit].gate);
}