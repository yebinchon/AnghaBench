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
struct clk_hw {int dummy; } ;
struct clk_dmn {int /*<<< orphan*/  regofs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_dmn* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
	unsigned long parent_rate)

{
	unsigned long fin = parent_rate;
	struct clk_dmn *clk = FUNC2(hw);

	u32 cfg = FUNC1(clk->regofs);

	if (cfg & FUNC0(24)) {
		/* fcd bypass mode */
		return fin;
	} else {
		/*
		 * wait count: bit[19:16], hold count: bit[23:20]
		 */
		u32 wait = (cfg >> 16) & (FUNC0(4) - 1);
		u32 hold = (cfg >> 20) & (FUNC0(4) - 1);

		return fin / (wait + hold + 2);
	}
}