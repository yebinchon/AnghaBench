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
typedef  int u8 ;
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct clk_dmn {int /*<<< orphan*/  regofs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (struct clk_hw*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 struct clk_dmn* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC6(struct clk_hw *hw)
{
	struct clk_dmn *clk = FUNC5(hw);
	u32 cfg = FUNC3(clk->regofs);
	const char *name = FUNC2(hw);

	/* parent of io domain can only be pll3 */
	if (FUNC4(name, "io") == 0)
		return 4;

	FUNC1((cfg & (FUNC0(3) - 1)) > 4);

	return cfg & (FUNC0(3) - 1);
}