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
typedef  scalar_t__ u8 ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int /*<<< orphan*/  reglock; scalar_t__ isen; scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alchemy_fgcs_clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct alchemy_fgcs_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct alchemy_fgcs_clk *c = FUNC3(hw);
	unsigned long flags;

	FUNC1(c->reglock, flags);
	c->parent = index + 1;	/* value to write to register */
	if (c->isen)
		FUNC0(c);
	FUNC2(c->reglock, flags);

	return 0;
}