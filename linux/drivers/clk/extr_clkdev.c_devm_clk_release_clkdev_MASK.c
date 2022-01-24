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
struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct clk_lookup* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  devm_clk_match_clkdev ; 
 int /*<<< orphan*/  devm_clkdev_release ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_lookup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct device *dev, const char *con_id,
			     const char *dev_id)
{
	struct clk_lookup *cl;
	int rval;

	FUNC3(&clocks_mutex);
	cl = FUNC1(dev_id, con_id);
	FUNC4(&clocks_mutex);

	FUNC0(!cl);
	rval = FUNC2(dev, devm_clkdev_release,
			      devm_clk_match_clkdev, cl);
	FUNC0(rval);
}