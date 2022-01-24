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
struct clk_lookup {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct clk_hw*) ; 
 struct clk_lookup* FUNC2 (struct clk_hw*,char const*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw,
	struct clk_lookup **cl, const char *con_id, const char *dev_id)
{
	if (FUNC0(hw))
		return FUNC1(hw);
	/*
	 * Since dev_id can be NULL, and NULL is handled specially, we must
	 * pass it as either a NULL format string, or with "%s".
	 */
	if (dev_id)
		*cl = FUNC2(hw, con_id, "%s", dev_id);
	else
		*cl = FUNC2(hw, con_id, NULL);

	return *cl ? 0 : -ENOMEM;
}