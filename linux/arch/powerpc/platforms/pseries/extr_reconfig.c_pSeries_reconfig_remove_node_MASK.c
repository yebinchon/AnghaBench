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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct device_node *np)
{
	struct device_node *parent, *child;

	parent = FUNC2(np);
	if (!parent)
		return -EINVAL;

	if ((child = FUNC1(np, NULL))) {
		FUNC3(child);
		FUNC3(parent);
		return -EBUSY;
	}

	FUNC0(np);
	FUNC3(parent);
	return 0;
}