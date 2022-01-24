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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmem_node ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(u32 drc_index)
{
	struct device_node *dn;
	int rc;

	FUNC6("Attempting to add pmem node, drc index: %x\n", drc_index);

	rc = FUNC1(drc_index);
	if (rc) {
		FUNC7("Failed to acquire DRC, rc: %d, drc index: %x\n",
			rc, drc_index);
		return -EINVAL;
	}

	dn = FUNC3(FUNC0(drc_index), pmem_node);
	if (!dn) {
		FUNC7("configure-connector failed for drc %x\n", drc_index);
		FUNC5(drc_index);
		return -EINVAL;
	}

	/* NB: The of reconfig notifier creates platform device from the node */
	rc = FUNC2(dn, pmem_node);
	if (rc) {
		FUNC7("Failed to attach node %pOF, rc: %d, drc index: %x\n",
			dn, rc, drc_index);

		if (FUNC5(drc_index))
			FUNC4(dn);

		return rc;
	}

	FUNC8("Successfully added %pOF, drc index: %x\n", dn, drc_index);

	return 0;
}