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
struct gov_attr_set {int usage_count; int /*<<< orphan*/  policy_list; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct gov_attr_set *attr_set, struct list_head *list_node)
{
	FUNC0(&attr_set->policy_list);
	FUNC2(&attr_set->update_lock);
	attr_set->usage_count = 1;
	FUNC1(list_node, &attr_set->policy_list);
}