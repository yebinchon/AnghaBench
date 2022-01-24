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
struct list_head {int dummy; } ;
struct gov_attr_set {unsigned int usage_count; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

unsigned int FUNC5(struct gov_attr_set *attr_set, struct list_head *list_node)
{
	unsigned int count;

	FUNC3(&attr_set->update_lock);
	FUNC1(list_node);
	count = --attr_set->usage_count;
	FUNC4(&attr_set->update_lock);
	if (count)
		return count;

	FUNC0(&attr_set->kobj);
	FUNC2(&attr_set->update_lock);
	return 0;
}