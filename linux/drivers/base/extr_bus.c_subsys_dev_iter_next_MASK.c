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
struct subsys_dev_iter {scalar_t__ type; int /*<<< orphan*/  ki; } ;
struct klist_node {int dummy; } ;
struct device {scalar_t__ type; } ;
struct TYPE_2__ {struct device* device; } ;

/* Variables and functions */
 struct klist_node* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct klist_node*) ; 

struct device *FUNC2(struct subsys_dev_iter *iter)
{
	struct klist_node *knode;
	struct device *dev;

	for (;;) {
		knode = FUNC0(&iter->ki);
		if (!knode)
			return NULL;
		dev = FUNC1(knode)->device;
		if (!iter->type || iter->type == dev->type)
			return dev;
	}
}