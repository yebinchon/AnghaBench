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
struct ti_adpll_data {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;
typedef  enum ti_adpll_clocks { ____Placeholder_ti_adpll_clocks } ti_adpll_clocks ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 char* FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  clk_unregister ; 
 char* FUNC4 (struct ti_adpll_data*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct ti_adpll_data*,struct clk*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ti_adpll_data *d,
				      enum ti_adpll_clocks index,
				      char *name,
				      struct clk *parent_clock,
				      unsigned int mult,
				      unsigned int div)
{
	const char *child_name;
	const char *parent_name;
	struct clk *clock;

	child_name = FUNC4(d, -ENODEV, name);
	if (!child_name)
		return -ENOMEM;

	parent_name = FUNC2(parent_clock);
	clock = FUNC3(d->dev, child_name, parent_name,
					  0, mult, div);
	if (FUNC0(clock))
		return FUNC1(clock);

	return FUNC5(d, clock, index, -ENODEV, child_name,
				    clk_unregister);
}