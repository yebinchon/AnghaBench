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
struct acpi_ec {scalar_t__ command_addr; scalar_t__ data_addr; int /*<<< orphan*/  handle; } ;
struct acpi_device {struct acpi_ec* driver_data; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ECDT_HID ; 
 int /*<<< orphan*/  ACPI_EC_CLASS ; 
 int /*<<< orphan*/  ACPI_EC_DEVICE_NAME ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 struct acpi_ec* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ec*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct acpi_ec*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct acpi_ec* boot_ec ; 
 int boot_ec_is_ecdt ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_ec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct acpi_device *device)
{
	struct acpi_ec *ec = NULL;
	bool dep_update = true;
	acpi_status status;
	int ret;

	FUNC14(FUNC3(device), ACPI_EC_DEVICE_NAME);
	FUNC14(FUNC1(device), ACPI_EC_CLASS);

	if (!FUNC13(FUNC2(device), ACPI_ECDT_HID)) {
		boot_ec_is_ecdt = true;
		ec = boot_ec;
		dep_update = false;
	} else {
		ec = FUNC4();
		if (!ec)
			return -ENOMEM;

		status = FUNC11(device->handle, 0, ec, NULL);
		if (status != AE_CTRL_TERMINATE) {
			ret = -EINVAL;
			goto err_alloc;
		}

		if (boot_ec && ec->command_addr == boot_ec->command_addr &&
		    ec->data_addr == boot_ec->data_addr) {
			boot_ec_is_ecdt = false;
			/*
			 * Trust PNP0C09 namespace location rather than
			 * ECDT ID. But trust ECDT GPE rather than _GPE
			 * because of ASUS quirks, so do not change
			 * boot_ec->gpe to ec->gpe.
			 */
			boot_ec->handle = ec->handle;
			FUNC8(ec->handle, "duplicated.\n");
			FUNC5(ec);
			ec = boot_ec;
		}
	}

	ret = FUNC7(ec, true);
	if (ret)
		goto err_query;

	if (ec == boot_ec)
		FUNC9(boot_ec->handle,
				 "Boot %s EC used to handle transactions and events\n",
				 boot_ec_is_ecdt ? "ECDT" : "DSDT");

	device->driver_data = ec;

	ret = !!FUNC12(ec->data_addr, 1, "EC data");
	FUNC0(!ret, "Could not request EC data io port 0x%lx", ec->data_addr);
	ret = !!FUNC12(ec->command_addr, 1, "EC cmd");
	FUNC0(!ret, "Could not request EC cmd io port 0x%lx", ec->command_addr);

	if (dep_update) {
		/* Reprobe devices depending on the EC */
		FUNC10(ec->handle);
	}
	FUNC8(ec->handle, "enumerated.\n");
	return 0;

err_query:
	if (ec != boot_ec)
		FUNC6(ec, true, 0);
err_alloc:
	if (ec != boot_ec)
		FUNC5(ec);
	return ret;
}