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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

int FUNC4(int cpu)
{
	struct device_node *dn;
	struct device *dev;
	u32 drc_index;
	int rc;

	dev = FUNC2(cpu);
	dn = dev->of_node;

	rc = FUNC3(dn, "ibm,my-drc-index", &drc_index);

	rc = FUNC1(drc_index);
	if (!rc)
		rc = FUNC0(drc_index);

	return rc;
}