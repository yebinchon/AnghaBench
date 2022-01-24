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
struct device_node {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk_factors {struct clk_factors* gate; struct clk_factors* mux; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 struct clk_hw* FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_factors*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct clk_factors* FUNC4 (struct clk_hw*) ; 

void FUNC5(struct device_node *node, struct clk *clk)
{
	struct clk_hw *hw = FUNC0(clk);
	struct clk_factors *factors;

	if (!hw)
		return;

	factors = FUNC4(hw);

	FUNC3(node);
	/* TODO: The composite clock stuff will leak a bit here. */
	FUNC1(clk);
	FUNC2(factors->mux);
	FUNC2(factors->gate);
	FUNC2(factors);
}