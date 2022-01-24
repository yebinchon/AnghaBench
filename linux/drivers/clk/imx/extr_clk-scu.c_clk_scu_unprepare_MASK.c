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
struct clk_scu {int /*<<< orphan*/  clk_type; int /*<<< orphan*/  rsrc_id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ccm_ipc_handle ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct clk_scu* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct clk_scu *clk = FUNC3(hw);
	int ret;

	ret = FUNC2(ccm_ipc_handle, clk->rsrc_id,
				 clk->clk_type, false, false);
	if (ret)
		FUNC1("%s: clk unprepare failed %d\n", FUNC0(hw),
			ret);
}