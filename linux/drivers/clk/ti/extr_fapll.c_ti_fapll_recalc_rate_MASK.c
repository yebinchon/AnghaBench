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
typedef  int u32 ;
struct fapll_data {int /*<<< orphan*/  base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fapll_data*) ; 
 struct fapll_data* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
					  unsigned long parent_rate)
{
	struct fapll_data *fd = FUNC3(hw);
	u32 fapll_n, fapll_p, v;
	u64 rate;

	if (FUNC2(fd))
		return parent_rate;

	rate = parent_rate;

	/* PLL pre-divider is P and multiplier is N */
	v = FUNC1(fd->base);
	fapll_p = (v >> 8) & 0xff;
	if (fapll_p)
		FUNC0(rate, fapll_p);
	fapll_n = v >> 16;
	if (fapll_n)
		rate *= fapll_n;

	return rate;
}