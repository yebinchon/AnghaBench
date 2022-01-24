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

/* Variables and functions */
 int ENODEV ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(u32 drc_index)
{
	struct device_node *dn;
	int rc;

	dn = FUNC0(drc_index);
	if (!dn) {
		FUNC3("Cannot find CPU (drc index %x) to remove\n",
			drc_index);
		return -ENODEV;
	}

	rc = FUNC1(dn, drc_index);
	FUNC2(dn);
	return rc;
}