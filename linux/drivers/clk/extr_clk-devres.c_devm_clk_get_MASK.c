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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,char const*) ; 
 int /*<<< orphan*/  devm_clk_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct clk**) ; 
 struct clk** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clk**) ; 

struct clk *FUNC6(struct device *dev, const char *id)
{
	struct clk **ptr, *clk;

	ptr = FUNC4(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	clk = FUNC2(dev, id);
	if (!FUNC1(clk)) {
		*ptr = clk;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return clk;
}