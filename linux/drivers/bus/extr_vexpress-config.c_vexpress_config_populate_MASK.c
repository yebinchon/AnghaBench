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

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  vexpress_config_class ; 
 int /*<<< orphan*/  vexpress_config_node_match ; 

__attribute__((used)) static int FUNC6(struct device_node *node)
{
	struct device_node *bridge;
	struct device *parent;
	int ret;

	bridge = FUNC3(node, "arm,vexpress,config-bridge", 0);
	if (!bridge)
		return -EINVAL;

	parent = FUNC1(vexpress_config_class, NULL, bridge,
			vexpress_config_node_match);
	FUNC2(bridge);
	if (FUNC0(!parent))
		return -ENODEV;

	ret = FUNC4(node, NULL, NULL, parent);

	FUNC5(parent);

	return ret;
}