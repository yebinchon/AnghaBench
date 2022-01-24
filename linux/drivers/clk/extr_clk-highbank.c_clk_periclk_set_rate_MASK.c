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
struct hb_clk {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct hb_clk* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hwclk, unsigned long rate,
				unsigned long parent_rate)
{
	struct hb_clk *hbclk = FUNC0(hwclk);
	u32 div;

	div = parent_rate / rate;
	if (div & 0x1)
		return -EINVAL;

	FUNC1(div >> 1, hbclk->reg);
	return 0;
}