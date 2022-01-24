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
typedef  long u64 ;
struct xgene_clk_pmd {unsigned long denom; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (long,unsigned long) ; 
 struct xgene_clk_pmd* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
				     unsigned long *parent_rate)
{
	struct xgene_clk_pmd *fd = FUNC2(hw);
	u64 ret, scale;

	if (!rate || rate >= *parent_rate)
		return *parent_rate;

	/* freq = parent_rate * scaler / denom */
	ret = rate * fd->denom;
	scale = FUNC0(ret, *parent_rate);

	ret = (u64)*parent_rate * scale;
	FUNC1(ret, fd->denom);

	return ret;
}