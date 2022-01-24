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
struct clk_programmable_layout {scalar_t__ is_pres_direct; } ;
struct clk_programmable {int /*<<< orphan*/  id; int /*<<< orphan*/  regmap; struct clk_programmable_layout* layout; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clk_programmable_layout const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_programmable* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
						  unsigned long parent_rate)
{
	struct clk_programmable *prog = FUNC3(hw);
	const struct clk_programmable_layout *layout = prog->layout;
	unsigned int pckr;
	unsigned long rate;

	FUNC2(prog->regmap, FUNC0(prog->id), &pckr);

	if (layout->is_pres_direct)
		rate = parent_rate / (FUNC1(layout, pckr) + 1);
	else
		rate = parent_rate >> FUNC1(layout, pckr);

	return rate;
}