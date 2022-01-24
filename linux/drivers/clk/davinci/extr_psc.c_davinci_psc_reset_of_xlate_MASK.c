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
struct reset_controller_dev {int dummy; } ;
struct of_phandle_args {int dummy; } ;
struct davinci_lpsc_clk {int flags; int md; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int LPSC_LOCAL_RESET ; 
 int FUNC1 (struct clk*) ; 
 struct clk_hw* FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 struct clk* FUNC4 (struct of_phandle_args*) ; 
 struct davinci_lpsc_clk* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct reset_controller_dev *rcdev,
				      const struct of_phandle_args *reset_spec)
{
	struct of_phandle_args clkspec = *reset_spec; /* discard const qualifier */
	struct clk *clk;
	struct clk_hw *hw;
	struct davinci_lpsc_clk *lpsc;

	/* the clock node is the same as the reset node */
	clk = FUNC4(&clkspec);
	if (FUNC0(clk))
		return FUNC1(clk);

	hw = FUNC2(clk);
	lpsc = FUNC5(hw);
	FUNC3(clk);

	/* not all modules support local reset */
	if (!(lpsc->flags & LPSC_LOCAL_RESET))
		return -EINVAL;

	return lpsc->md;
}