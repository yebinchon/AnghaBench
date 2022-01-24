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
struct fapll_data {int /*<<< orphan*/  base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FAPLL_MAIN_CLEAR_MASK ; 
 int FAPLL_MAIN_DIV_P_SHIFT ; 
 int FAPLL_MAIN_MULT_N_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fapll_data*) ; 
 scalar_t__ FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct fapll_data*) ; 
 int FUNC4 (unsigned long,unsigned long,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct fapll_data*) ; 
 struct fapll_data* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
			     unsigned long parent_rate)
{
	struct fapll_data *fd = FUNC6(hw);
	u32 pre_div_p, mult_n, v;
	int error;

	if (!rate)
		return -EINVAL;

	error = FUNC4(rate, parent_rate,
				      &pre_div_p, &mult_n);
	if (error)
		return error;

	FUNC3(fd);
	v = FUNC0(fd->base);
	v &= ~FAPLL_MAIN_CLEAR_MASK;
	v |= pre_div_p << FAPLL_MAIN_DIV_P_SHIFT;
	v |= mult_n << FAPLL_MAIN_MULT_N_SHIFT;
	FUNC7(v, fd->base);
	if (FUNC2(hw))
		FUNC5(fd);
	FUNC1(fd);

	return 0;
}