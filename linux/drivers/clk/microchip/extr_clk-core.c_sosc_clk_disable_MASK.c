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
struct pic32_sec_osc {int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  enable_mask; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pic32_sec_osc* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct pic32_sec_osc *sosc = FUNC1(hw);

	FUNC2();
	FUNC3(sosc->enable_mask, FUNC0(sosc->enable_reg));
}