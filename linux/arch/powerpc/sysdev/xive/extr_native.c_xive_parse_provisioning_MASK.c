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
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device_node*,char*,int) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  xive_provision_cache ; 
 int xive_provision_chip_count ; 
 int /*<<< orphan*/  xive_provision_chips ; 
 int /*<<< orphan*/  xive_provision_size ; 

__attribute__((used)) static bool FUNC7(struct device_node *np)
{
	int rc;

	if (FUNC4(np, "ibm,xive-provision-page-size",
				 &xive_provision_size) < 0)
		return true;
	rc = FUNC3(np, "ibm,xive-provision-chips", 4);
	if (rc < 0) {
		FUNC6("Error %d getting provision chips array\n", rc);
		return false;
	}
	xive_provision_chip_count = rc;
	if (rc == 0)
		return true;

	xive_provision_chips = FUNC1(4, xive_provision_chip_count,
				       GFP_KERNEL);
	if (FUNC0(!xive_provision_chips))
		return false;

	rc = FUNC5(np, "ibm,xive-provision-chips",
					xive_provision_chips,
					xive_provision_chip_count);
	if (rc < 0) {
		FUNC6("Error %d reading provision chips array\n", rc);
		return false;
	}

	xive_provision_cache = FUNC2("xive-provision",
						 xive_provision_size,
						 xive_provision_size,
						 0, NULL);
	if (!xive_provision_cache) {
		FUNC6("Failed to allocate provision cache\n");
		return false;
	}
	return true;
}