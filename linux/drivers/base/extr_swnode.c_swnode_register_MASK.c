#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fwnode_handle {int /*<<< orphan*/ * ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  kset; } ;
struct swnode {int id; unsigned int allocated; struct fwnode_handle fwnode; TYPE_1__ kobj; int /*<<< orphan*/  children; int /*<<< orphan*/  entry; int /*<<< orphan*/  child_ids; struct swnode* parent; struct software_node const* node; } ;
struct software_node {int name; int /*<<< orphan*/  properties; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fwnode_handle* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct swnode*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct swnode* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  software_node_ops ; 
 int /*<<< orphan*/  software_node_type ; 
 int /*<<< orphan*/  swnode_kset ; 
 int /*<<< orphan*/  swnode_root_ids ; 

__attribute__((used)) static struct fwnode_handle *
FUNC11(const struct software_node *node, struct swnode *parent,
		unsigned int allocated)
{
	struct swnode *swnode;
	int ret;

	swnode = FUNC8(sizeof(*swnode), GFP_KERNEL);
	if (!swnode) {
		ret = -ENOMEM;
		goto out_err;
	}

	ret = FUNC3(parent ? &parent->child_ids : &swnode_root_ids,
			     0, 0, GFP_KERNEL);
	if (ret < 0) {
		FUNC4(swnode);
		goto out_err;
	}

	swnode->id = ret;
	swnode->node = node;
	swnode->parent = parent;
	swnode->allocated = allocated;
	swnode->kobj.kset = swnode_kset;
	swnode->fwnode.ops = &software_node_ops;

	FUNC2(&swnode->child_ids);
	FUNC1(&swnode->entry);
	FUNC1(&swnode->children);

	if (node->name)
		ret = FUNC5(&swnode->kobj, &software_node_type,
					   parent ? &parent->kobj : NULL,
					   "%s", node->name);
	else
		ret = FUNC5(&swnode->kobj, &software_node_type,
					   parent ? &parent->kobj : NULL,
					   "node%d", swnode->id);
	if (ret) {
		FUNC6(&swnode->kobj);
		return FUNC0(ret);
	}

	if (parent)
		FUNC9(&swnode->entry, &parent->children);

	FUNC7(&swnode->kobj, KOBJ_ADD);
	return &swnode->fwnode;

out_err:
	if (allocated)
		FUNC10(node->properties);
	return FUNC0(ret);
}