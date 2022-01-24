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
struct pic32_ref_osc {int /*<<< orphan*/  ctrl_reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int REFO_ON ; 
 struct pic32_ref_osc* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct pic32_ref_osc *refo = FUNC0(hw);

	return FUNC1(refo->ctrl_reg) & REFO_ON;
}