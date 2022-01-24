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
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  devm_clk_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct clk**) ; 
 struct clk** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clk**) ; 
 struct clk* FUNC5 (struct device_node*,char const*) ; 

struct clk *FUNC6(struct device *dev,
				    struct device_node *np, const char *con_id)
{
	struct clk **ptr, *clk;

	ptr = FUNC3(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	clk = FUNC5(np, con_id);
	if (!FUNC1(clk)) {
		*ptr = clk;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return clk;
}