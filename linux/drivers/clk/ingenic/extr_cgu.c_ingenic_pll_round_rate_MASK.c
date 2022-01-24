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
struct ingenic_clk {int dummy; } ;
struct ingenic_cgu_clk_info {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct ingenic_cgu_clk_info const*,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ingenic_cgu_clk_info* FUNC1 (struct ingenic_clk*) ; 
 struct ingenic_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long
FUNC3(struct clk_hw *hw, unsigned long req_rate,
		       unsigned long *prate)
{
	struct ingenic_clk *ingenic_clk = FUNC2(hw);
	const struct ingenic_cgu_clk_info *clk_info = FUNC1(ingenic_clk);

	return FUNC0(clk_info, req_rate, *prate, NULL, NULL, NULL);
}