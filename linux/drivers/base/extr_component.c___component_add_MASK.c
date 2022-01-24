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
struct component_ops {int dummy; } ;
struct component {int subcomponent; int /*<<< orphan*/  node; scalar_t__ master; struct device* dev; struct component_ops const* ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  component_list ; 
 int /*<<< orphan*/  component_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct component_ops const*) ; 
 int /*<<< orphan*/  FUNC1 (struct component*) ; 
 struct component* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct component*) ; 
 int FUNC8 (struct component*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, const struct component_ops *ops,
	int subcomponent)
{
	struct component *component;
	int ret;

	component = FUNC2(sizeof(*component), GFP_KERNEL);
	if (!component)
		return -ENOMEM;

	component->ops = ops;
	component->dev = dev;
	component->subcomponent = subcomponent;

	FUNC0(dev, "adding component (ops %ps)\n", ops);

	FUNC5(&component_mutex);
	FUNC3(&component->node, &component_list);

	ret = FUNC8(component);
	if (ret < 0) {
		if (component->master)
			FUNC7(component->master, component);
		FUNC4(&component->node);

		FUNC1(component);
	}
	FUNC6(&component_mutex);

	return ret < 0 ? ret : 0;
}