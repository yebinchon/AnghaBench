#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {scalar_t__ valid; } ;
struct TYPE_7__ {TYPE_1__ flags; } ;
struct acpi_device {TYPE_4__ dev; TYPE_2__ wakeup; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_8__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_EDGE_TRIGGERED ; 
 int /*<<< orphan*/  EC_SCI_SRC_ALL ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  XO15_SCI_CLASS ; 
 int /*<<< orphan*/  XO15_SCI_DEVICE_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int) ; 
 TYPE_3__ lid_wake_on_close_attr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  sci_work ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long long xo15_sci_gpe ; 
 int /*<<< orphan*/  xo15_sci_gpe_handler ; 

__attribute__((used)) static int FUNC14(struct acpi_device *device)
{
	unsigned long long tmp;
	acpi_status status;
	int r;

	if (!device)
		return -EINVAL;

	FUNC12(FUNC2(device), XO15_SCI_DEVICE_NAME);
	FUNC12(FUNC1(device), XO15_SCI_CLASS);

	/* Get GPE bit assignment (EC events). */
	status = FUNC4(device->handle, "_GPE", NULL, &tmp);
	if (FUNC0(status))
		return -EINVAL;

	xo15_sci_gpe = tmp;
	status = FUNC5(NULL, xo15_sci_gpe,
					  ACPI_GPE_EDGE_TRIGGERED,
					  xo15_sci_gpe_handler, device);
	if (FUNC0(status))
		return -ENODEV;

	FUNC8(&device->dev, "Initialized, GPE = 0x%lx\n", xo15_sci_gpe);

	r = FUNC13(&device->dev.kobj, &lid_wake_on_close_attr.attr);
	if (r)
		goto err_sysfs;

	/* Flush queue, and enable all SCI events */
	FUNC11();
	FUNC10(EC_SCI_SRC_ALL);

	FUNC3(NULL, xo15_sci_gpe);

	/* Enable wake-on-EC */
	if (device->wakeup.flags.valid)
		FUNC9(&device->dev, true);

	return 0;

err_sysfs:
	FUNC6(NULL, xo15_sci_gpe, xo15_sci_gpe_handler);
	FUNC7(&sci_work);
	return r;
}