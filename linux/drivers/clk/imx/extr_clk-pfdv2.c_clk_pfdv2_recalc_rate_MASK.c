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
struct clk_pfdv2 {int frac_off; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_PFDV2_FRAC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct clk_pfdv2* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
					   unsigned long parent_rate)
{
	struct clk_pfdv2 *pfd = FUNC4(hw);
	u64 tmp = parent_rate;
	u8 frac;

	frac = (FUNC3(pfd->reg) >> pfd->frac_off)
		& CLK_PFDV2_FRAC_MASK;

	if (!frac) {
		FUNC2("clk_pfdv2: %s invalid pfd frac value 0\n",
			 FUNC0(hw));
		return 0;
	}

	tmp *= 18;
	FUNC1(tmp, frac);

	return tmp;
}