#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct swnode {int /*<<< orphan*/  kobj; int /*<<< orphan*/  id; int /*<<< orphan*/  entry; TYPE_1__* parent; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  child_ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swnode_root_ids ; 
 struct swnode* FUNC3 (struct fwnode_handle*) ; 

void FUNC4(struct fwnode_handle *fwnode)
{
	struct swnode *swnode = FUNC3(fwnode);

	if (!swnode)
		return;

	if (swnode->parent) {
		FUNC0(&swnode->parent->child_ids, swnode->id);
		FUNC2(&swnode->entry);
	} else {
		FUNC0(&swnode_root_ids, swnode->id);
	}

	FUNC1(&swnode->kobj);
}