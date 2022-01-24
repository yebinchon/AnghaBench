#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysc {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct clk_lookup {char const* con_id; struct clk* clk; int /*<<< orphan*/  dev_id; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_lookup*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct clk* FUNC5 (TYPE_1__*,struct device_node*,char const*) ; 
 struct clk_lookup* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 struct clk* FUNC7 (struct device_node*,char const*) ; 
 struct device_node* FUNC8 (struct device_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sysc *ddata,
					   const char *name,
					   const char *optfck_name)
{
	struct device_node *np = ddata->dev->of_node;
	struct device_node *child;
	struct clk_lookup *cl;
	struct clk *clock;
	const char *n;

	if (name)
		n = name;
	else
		n = optfck_name;

	/* Does the clock alias already exist? */
	clock = FUNC7(np, n);
	if (!FUNC0(clock)) {
		FUNC2(clock);

		return 0;
	}

	child = FUNC8(np, NULL);
	if (!child)
		return -ENODEV;

	clock = FUNC5(ddata->dev, child, name);
	if (FUNC0(clock))
		return FUNC1(clock);

	/*
	 * Use clkdev_add() instead of clkdev_alloc() to avoid the MAX_DEV_ID
	 * limit for clk_get(). If cl ever needs to be freed, it should be done
	 * with clkdev_drop().
	 */
	cl = FUNC6(1, sizeof(*cl), GFP_KERNEL);
	if (!cl)
		return -ENOMEM;

	cl->con_id = n;
	cl->dev_id = FUNC4(ddata->dev);
	cl->clk = clock;
	FUNC3(cl);

	FUNC2(clock);

	return 0;
}