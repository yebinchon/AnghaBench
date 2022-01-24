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
 int /*<<< orphan*/ * FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 

int FUNC2(struct device_node *np)
{
	struct device_node *dp = np;

	while (dp) {
		if (FUNC1(dp, "sbus") ||
		    FUNC1(dp, "sbi"))
			return 1;

		/* Have a look at use_1to1_mapping().  We're trying
		 * to match SBUS if that's the top-level bus and we
		 * don't have some intervening real bus that provides
		 * ranges based translations.
		 */
		if (FUNC0(dp, "ranges", NULL) != NULL)
			break;

		dp = dp->parent;
	}

	return 0;
}