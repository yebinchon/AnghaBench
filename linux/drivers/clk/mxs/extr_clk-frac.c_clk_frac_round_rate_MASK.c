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
struct clk_hw {int dummy; } ;
struct clk_frac {int width; } ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 struct clk_frac* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
				unsigned long *prate)
{
	struct clk_frac *frac = FUNC1(hw);
	unsigned long parent_rate = *prate;
	u32 div;
	u64 tmp, tmp_rate, result;

	if (rate > parent_rate)
		return -EINVAL;

	tmp = rate;
	tmp <<= frac->width;
	FUNC0(tmp, parent_rate);
	div = tmp;

	if (!div)
		return -EINVAL;

	tmp_rate = (u64)parent_rate * div;
	result = tmp_rate >> frac->width;
	if ((result << frac->width) < tmp_rate)
		result += 1;
	return result;
}