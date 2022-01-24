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
 int ENODEV ; 
 int /*<<< orphan*/  icp_opal_ops ; 
 int /*<<< orphan*/ * icp_ops ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(void)
{
	struct device_node *np;

	np = FUNC0(NULL, NULL, "ibm,opal-intc");
	if (!np)
		return -ENODEV;

	icp_ops = &icp_opal_ops;

	FUNC1("XICS: Using OPAL ICP fallbacks\n");

	return 0;
}