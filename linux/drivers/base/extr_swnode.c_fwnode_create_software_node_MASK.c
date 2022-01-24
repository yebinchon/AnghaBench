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
struct swnode {int /*<<< orphan*/ * node; } ;
struct software_node {int /*<<< orphan*/ * parent; } ;
struct property_entry {int dummy; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct fwnode_handle* FUNC0 (struct fwnode_handle const*) ; 
 struct fwnode_handle* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct fwnode_handle const*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle const*) ; 
 int /*<<< orphan*/  FUNC4 (struct software_node*) ; 
 struct software_node* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct software_node*,struct property_entry const*) ; 
 struct fwnode_handle* FUNC7 (struct software_node*,struct swnode*,int) ; 
 struct swnode* FUNC8 (struct fwnode_handle const*) ; 

struct fwnode_handle *
FUNC9(const struct property_entry *properties,
			    const struct fwnode_handle *parent)
{
	struct software_node *node;
	struct swnode *p = NULL;
	int ret;

	if (parent) {
		if (FUNC2(parent))
			return FUNC0(parent);
		if (!FUNC3(parent))
			return FUNC1(-EINVAL);
		p = FUNC8(parent);
	}

	node = FUNC5(sizeof(*node), GFP_KERNEL);
	if (!node)
		return FUNC1(-ENOMEM);

	ret = FUNC6(node, properties);
	if (ret) {
		FUNC4(node);
		return FUNC1(ret);
	}

	node->parent = p ? p->node : NULL;

	return FUNC7(node, p, 1);
}