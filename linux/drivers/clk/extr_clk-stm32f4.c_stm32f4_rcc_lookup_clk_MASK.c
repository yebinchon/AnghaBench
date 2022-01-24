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
struct of_phandle_args {int /*<<< orphan*/ * args; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct clk_hw* FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_hw** clks ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk_hw *
FUNC2(struct of_phandle_args *clkspec, void *data)
{
	int i = FUNC1(clkspec->args[0], clkspec->args[1]);

	if (i < 0)
		return FUNC0(-EINVAL);

	return clks[i];
}