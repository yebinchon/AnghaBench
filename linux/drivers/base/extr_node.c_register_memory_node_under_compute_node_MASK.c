#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct node_access_nodes {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct node {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct node** node_devices ; 
 struct node_access_nodes* FUNC1 (struct node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC5(unsigned int mem_nid,
					    unsigned int cpu_nid,
					    unsigned access)
{
	struct node *init_node, *targ_node;
	struct node_access_nodes *initiator, *target;
	int ret;

	if (!FUNC2(cpu_nid) || !FUNC2(mem_nid))
		return -ENODEV;

	init_node = node_devices[cpu_nid];
	targ_node = node_devices[mem_nid];
	initiator = FUNC1(init_node, access);
	target = FUNC1(targ_node, access);
	if (!initiator || !target)
		return -ENOMEM;

	ret = FUNC3(&initiator->dev.kobj, "targets",
				      &targ_node->dev.kobj,
				      FUNC0(&targ_node->dev));
	if (ret)
		return ret;

	ret = FUNC3(&target->dev.kobj, "initiators",
				      &init_node->dev.kobj,
				      FUNC0(&init_node->dev));
	if (ret)
		goto err;

	return 0;
 err:
	FUNC4(&initiator->dev.kobj, "targets",
				     FUNC0(&targ_node->dev));
	return ret;
}