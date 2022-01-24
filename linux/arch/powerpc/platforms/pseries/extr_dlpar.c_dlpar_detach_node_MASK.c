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
 int FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

int FUNC3(struct device_node *dn)
{
	struct device_node *child;
	int rc;

	child = FUNC1(dn, NULL);
	while (child) {
		FUNC3(child);
		child = FUNC1(dn, child);
	}

	rc = FUNC0(dn);
	if (rc)
		return rc;

	FUNC2(dn);

	return 0;
}