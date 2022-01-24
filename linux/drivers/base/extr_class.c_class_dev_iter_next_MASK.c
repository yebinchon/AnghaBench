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
struct klist_node {int dummy; } ;
struct device {scalar_t__ type; } ;
struct class_dev_iter {scalar_t__ type; int /*<<< orphan*/  ki; } ;

/* Variables and functions */
 struct device* FUNC0 (struct klist_node*) ; 
 struct klist_node* FUNC1 (int /*<<< orphan*/ *) ; 

struct device *FUNC2(struct class_dev_iter *iter)
{
	struct klist_node *knode;
	struct device *dev;

	while (1) {
		knode = FUNC1(&iter->ki);
		if (!knode)
			return NULL;
		dev = FUNC0(knode);
		if (!iter->type || iter->type == dev->type)
			return dev;
	}
}