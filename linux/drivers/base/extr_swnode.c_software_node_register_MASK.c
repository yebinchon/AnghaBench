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
struct swnode {int dummy; } ;
struct software_node {struct software_node const* parent; } ;

/* Variables and functions */
 int EEXIST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct swnode* FUNC1 (struct software_node const*) ; 
 int /*<<< orphan*/  FUNC2 (struct software_node const*,struct swnode*,int /*<<< orphan*/ ) ; 

int FUNC3(const struct software_node *node)
{
	struct swnode *parent = FUNC1(node->parent);

	if (FUNC1(node))
		return -EEXIST;

	return FUNC0(FUNC2(node, parent, 0));
}