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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_branch {scalar_t__ halt_check; int /*<<< orphan*/  halt_bit; int /*<<< orphan*/  halt_reg; TYPE_1__ clkr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BRANCH_HALT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC2(const struct clk_branch *br, bool enabling)
{
	bool invert = (br->halt_check == BRANCH_HALT_ENABLE);
	u32 val;

	FUNC1(br->clkr.regmap, br->halt_reg, &val);

	val &= FUNC0(br->halt_bit);
	if (invert)
		val = !val;

	return !!val == !enabling;
}