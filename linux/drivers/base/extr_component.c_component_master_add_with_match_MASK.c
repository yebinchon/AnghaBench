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
struct master {int /*<<< orphan*/  node; struct component_match* match; struct component_master_ops const* ops; struct device* dev; } ;
struct device {int dummy; } ;
struct component_match {int /*<<< orphan*/  num; } ;
struct component_master_ops {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct master*) ; 
 int FUNC1 (struct device*,struct component_match*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  component_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct master*) ; 
 struct master* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  masters ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct master*,int /*<<< orphan*/ *) ; 

int FUNC8(struct device *dev,
	const struct component_master_ops *ops,
	struct component_match *match)
{
	struct master *master;
	int ret;

	/* Reallocate the match array for its true size */
	ret = FUNC1(dev, match, match->num);
	if (ret)
		return ret;

	master = FUNC3(sizeof(*master), GFP_KERNEL);
	if (!master)
		return -ENOMEM;

	master->dev = dev;
	master->ops = ops;
	master->match = match;

	FUNC0(master);
	/* Add to the list of available masters. */
	FUNC5(&component_mutex);
	FUNC4(&master->node, &masters);

	ret = FUNC7(master, NULL);

	if (ret < 0)
		FUNC2(master);

	FUNC6(&component_mutex);

	return ret < 0 ? ret : 0;
}