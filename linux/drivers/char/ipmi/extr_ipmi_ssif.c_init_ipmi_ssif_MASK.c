#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  acpi_match_table; } ;
struct TYPE_5__ {int /*<<< orphan*/  address_list; TYPE_1__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SI_HARDCODED ; 
 int /*<<< orphan*/ * adapter_name ; 
 int* addr ; 
 int /*<<< orphan*/ * dbg ; 
 int FUNC1 (TYPE_2__*) ; 
 int initialized ; 
 int /*<<< orphan*/  ipmi_driver ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int num_addrs ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int platform_registered ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * slave_addrs ; 
 int /*<<< orphan*/  ssif_acpi_match ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__ ssif_i2c_driver ; 
 scalar_t__ ssif_tryacpi ; 
 scalar_t__ ssif_trydmi ; 

__attribute__((used)) static int FUNC7(void)
{
	int i;
	int rv;

	if (initialized)
		return 0;

	FUNC5("IPMI SSIF Interface driver\n");

	/* build list for i2c from addr list */
	for (i = 0; i < num_addrs; i++) {
		rv = FUNC2(addr[i], adapter_name[i],
				     dbg[i], slave_addrs[i],
				     SI_HARDCODED, NULL);
		if (rv)
			FUNC4("Couldn't add hardcoded device at addr 0x%x\n",
			       addr[i]);
	}

	if (ssif_tryacpi)
		ssif_i2c_driver.driver.acpi_match_table	=
			FUNC0(ssif_acpi_match);

	if (ssif_trydmi) {
		rv = FUNC3(&ipmi_driver);
		if (rv)
			FUNC4("Unable to register driver: %d\n", rv);
		else
			platform_registered = true;
	}

	ssif_i2c_driver.address_list = FUNC6();

	rv = FUNC1(&ssif_i2c_driver);
	if (!rv)
		initialized = true;

	return rv;
}