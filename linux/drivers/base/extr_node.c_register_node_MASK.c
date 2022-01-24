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
struct TYPE_3__ {int id; int /*<<< orphan*/  groups; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; } ;
struct node {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct node*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct node*) ; 
 int /*<<< orphan*/  node_dev_groups ; 
 int /*<<< orphan*/  node_device_release ; 
 int /*<<< orphan*/  node_subsys ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct node *node, int num)
{
	int error;

	node->dev.id = num;
	node->dev.bus = &node_subsys;
	node->dev.release = node_device_release;
	node->dev.groups = node_dev_groups;
	error = FUNC1(&node->dev);

	if (error)
		FUNC3(&node->dev);
	else {
		FUNC2(node);

		FUNC0(node);
	}
	return error;
}