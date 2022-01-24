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
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct device_node*,int,...) ; 

__attribute__((used)) static ssize_t FUNC7(struct device_node *dn, u32 drc_index)
{
	int rc;

	FUNC5("Attempting to remove CPU %pOFn, drc index: %x\n",
		 dn, drc_index);

	rc = FUNC2(dn);
	if (rc) {
		FUNC6("Failed to offline CPU %pOFn, rc: %d\n", dn, rc);
		return -EINVAL;
	}

	rc = FUNC4(drc_index);
	if (rc) {
		FUNC6("Failed to release drc (%x) for CPU %pOFn, rc: %d\n",
			drc_index, dn, rc);
		FUNC3(dn);
		return rc;
	}

	rc = FUNC1(dn);
	if (rc) {
		int saved_rc = rc;

		FUNC6("Failed to detach CPU %pOFn, rc: %d", dn, rc);

		rc = FUNC0(drc_index);
		if (!rc)
			FUNC3(dn);

		return saved_rc;
	}

	FUNC5("Successfully removed CPU, drc index: %x\n", drc_index);
	return 0;
}