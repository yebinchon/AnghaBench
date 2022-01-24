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
typedef  unsigned long u8 ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int parent; int /*<<< orphan*/  reglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct alchemy_fgcs_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct alchemy_fgcs_clk *c = FUNC2(hw);
	unsigned long flags, v;

	FUNC0(c->reglock, flags);
	v = c->parent - 1;
	FUNC1(c->reglock, flags);
	return v;
}