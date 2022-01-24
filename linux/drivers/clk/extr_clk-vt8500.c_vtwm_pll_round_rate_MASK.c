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
typedef  int /*<<< orphan*/  u32 ;
struct clk_pll {int type; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PLL_TYPE_VT8500 131 
#define  PLL_TYPE_WM8650 130 
#define  PLL_TYPE_WM8750 129 
#define  PLL_TYPE_WM8850 128 
 long FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_pll* FUNC4 (struct clk_hw*) ; 
 int FUNC5 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC9(struct clk_hw *hw, unsigned long rate,
				unsigned long *prate)
{
	struct clk_pll *pll = FUNC4(hw);
	u32 filter, mul, div1, div2;
	long round_rate;
	int ret;

	switch (pll->type) {
	case PLL_TYPE_VT8500:
		ret = FUNC5(rate, *prate, &mul, &div1);
		if (!ret)
			round_rate = FUNC0(*prate, mul, div1);
		break;
	case PLL_TYPE_WM8650:
		ret = FUNC6(rate, *prate, &mul, &div1, &div2);
		if (!ret)
			round_rate = FUNC1(*prate, mul, div1, div2);
		break;
	case PLL_TYPE_WM8750:
		ret = FUNC7(rate, *prate, &filter, &mul, &div1, &div2);
		if (!ret)
			round_rate = FUNC2(*prate, mul, div1, div2);
		break;
	case PLL_TYPE_WM8850:
		ret = FUNC8(rate, *prate, &mul, &div1, &div2);
		if (!ret)
			round_rate = FUNC3(*prate, mul, div1, div2);
		break;
	default:
		ret = -EINVAL;
	}

	if (ret)
		return ret;

	return round_rate;
}