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
struct freq_tbl {int dummy; } ;
struct clk_rcg2 {int /*<<< orphan*/  freq_tbl; } ;
struct clk_hw {int dummy; } ;
typedef  enum freq_policy { ____Placeholder_freq_policy } freq_policy ;

/* Variables and functions */
#define  CEIL 129 
 int EINVAL ; 
#define  FLOOR 128 
 int FUNC0 (struct clk_rcg2*,struct freq_tbl const*) ; 
 struct freq_tbl* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct freq_tbl* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_rcg2* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
			       enum freq_policy policy)
{
	struct clk_rcg2 *rcg = FUNC3(hw);
	const struct freq_tbl *f;

	switch (policy) {
	case FLOOR:
		f = FUNC2(rcg->freq_tbl, rate);
		break;
	case CEIL:
		f = FUNC1(rcg->freq_tbl, rate);
		break;
	default:
		return -EINVAL;
	};

	if (!f)
		return -EINVAL;

	return FUNC0(rcg, f);
}