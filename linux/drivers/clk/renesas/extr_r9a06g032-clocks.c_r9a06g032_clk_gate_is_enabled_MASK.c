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
struct TYPE_2__ {scalar_t__ gate; scalar_t__ reset; } ;
struct r9a06g032_clk_gate {TYPE_1__ gate; int /*<<< orphan*/  clocks; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct r9a06g032_clk_gate* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct r9a06g032_clk_gate *g = FUNC1(hw);

	/* if clock is in reset, the gate might be on, and still not 'be' on */
	if (g->gate.reset && !FUNC0(g->clocks, g->gate.reset))
		return 0;

	return FUNC0(g->clocks, g->gate.gate);
}