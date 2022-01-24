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
typedef  int u64 ;
typedef  int u32 ;
struct clk_pfdv2 {int frac_off; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_PFDV2_FRAC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  pfd_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_pfdv2* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
			      unsigned long parent_rate)
{
	struct clk_pfdv2 *pfd = FUNC4(hw);
	unsigned long flags;
	u64 tmp = parent_rate;
	u32 val;
	u8 frac;

	tmp = tmp * 18 + rate / 2;
	FUNC0(tmp, rate);
	frac = tmp;
	if (frac < 12)
		frac = 12;
	else if (frac > 35)
		frac = 35;

	FUNC2(&pfd_lock, flags);
	val = FUNC1(pfd->reg);
	val &= ~(CLK_PFDV2_FRAC_MASK << pfd->frac_off);
	val |= frac << pfd->frac_off;
	FUNC5(val, pfd->reg);
	FUNC3(&pfd_lock, flags);

	return 0;
}