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
struct device_node {struct device_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	int error = 0;

	if (!FUNC0(np, "ti,omap-counter32k")) {
		error = FUNC2(np);
		if (error)
			return error;
	}

	/* No parent interconnect target module configured? */
	if (FUNC1(np, "ti,hwmods", NULL))
		return error;

	/* Tag parent interconnect target module disabled */
	error = FUNC2(np->parent);
	if (error)
		return error;

	return 0;
}