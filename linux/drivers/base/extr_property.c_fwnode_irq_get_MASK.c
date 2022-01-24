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
struct resource {int start; } ;
struct fwnode_handle {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,struct resource*) ; 
 int FUNC3 (struct device_node*,unsigned int) ; 
 struct device_node* FUNC4 (struct fwnode_handle*) ; 

int FUNC5(struct fwnode_handle *fwnode, unsigned int index)
{
	struct device_node *of_node = FUNC4(fwnode);
	struct resource res;
	int ret;

	if (FUNC1(CONFIG_OF) && of_node)
		return FUNC3(of_node, index);

	ret = FUNC2(FUNC0(fwnode), index, &res);
	if (ret)
		return ret;

	return res.start;
}