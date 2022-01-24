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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REFO_OE ; 
 int REFO_ON ; 
 struct pic32_ref_osc* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct pic32_ref_osc *refo = FUNC1(hw);

	FUNC2(REFO_ON | REFO_OE, FUNC0(refo->ctrl_reg));
}