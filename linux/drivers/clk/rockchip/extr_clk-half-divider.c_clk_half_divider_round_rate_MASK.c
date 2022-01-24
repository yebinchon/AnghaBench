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
typedef  int u64 ;
struct clk_hw {int dummy; } ;
struct clk_divider {int /*<<< orphan*/  flags; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 long FUNC0 (int,int) ; 
 int FUNC1 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_divider* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
					unsigned long *prate)
{
	struct clk_divider *divider = FUNC2(hw);
	int div;

	div = FUNC1(hw, rate, prate,
				       divider->width,
				       divider->flags);

	return FUNC0(((u64)*prate * 2), div * 2 + 3);
}