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
struct gov_attr_set {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  policy_list; int /*<<< orphan*/  usage_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct gov_attr_set *attr_set, struct list_head *list_node)
{
	FUNC1(&attr_set->update_lock);
	attr_set->usage_count++;
	FUNC0(list_node, &attr_set->policy_list);
	FUNC2(&attr_set->update_lock);
}