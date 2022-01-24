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
typedef  int u32 ;
struct pic32_sec_osc {int status_mask; int /*<<< orphan*/  status_reg; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  enable_mask; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pic32_sec_osc* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct pic32_sec_osc *sosc = FUNC1(hw);
	u32 v;

	/* enable SOSC */
	FUNC2();
	FUNC4(sosc->enable_mask, FUNC0(sosc->enable_reg));

	/* wait till warm-up period expires or ready-status is updated */
	return FUNC3(sosc->status_reg, v,
					 v & sosc->status_mask, 1, 100);
}