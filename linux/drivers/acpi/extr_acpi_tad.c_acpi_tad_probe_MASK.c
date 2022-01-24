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
struct device {int /*<<< orphan*/  kobj; } ;
struct platform_device {struct device dev; } ;
struct acpi_tad_driver_data {unsigned long long capabilities; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 unsigned long long ACPI_TAD_AC_WAKE ; 
 unsigned long long ACPI_TAD_DC_WAKE ; 
 unsigned long long ACPI_TAD_RT ; 
 int DPM_FLAG_LEAVE_SUSPENDED ; 
 int DPM_FLAG_SMART_SUSPEND ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  acpi_tad_attr_group ; 
 int /*<<< orphan*/  acpi_tad_dc_attr_group ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  acpi_tad_time_attr_group ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct acpi_tad_driver_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int) ; 
 struct acpi_tad_driver_data* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	acpi_handle handle = FUNC1(dev);
	struct acpi_tad_driver_data *dd;
	acpi_status status;
	unsigned long long caps;
	int ret;

	/*
	 * Initialization failure messages are mostly about firmware issues, so
	 * print them at the "info" level.
	 */
	status = FUNC2(handle, "_GCP", NULL, &caps);
	if (FUNC0(status)) {
		FUNC5(dev, "Unable to get capabilities\n");
		return -ENODEV;
	}

	if (!(caps & ACPI_TAD_AC_WAKE)) {
		FUNC5(dev, "Unsupported capabilities\n");
		return -ENODEV;
	}

	if (!FUNC3(handle, "_PRW")) {
		FUNC5(dev, "Missing _PRW\n");
		return -ENODEV;
	}

	dd = FUNC9(dev, sizeof(*dd), GFP_KERNEL);
	if (!dd)
		return -ENOMEM;

	dd->capabilities = caps;
	FUNC7(dev, dd);

	/*
	 * Assume that the ACPI PM domain has been attached to the device and
	 * simply enable system wakeup and runtime PM and put the device into
	 * runtime suspend.  Everything else should be taken care of by the ACPI
	 * PM domain callbacks.
	 */
	FUNC8(dev, true);
	FUNC6(dev, DPM_FLAG_SMART_SUSPEND |
				     DPM_FLAG_LEAVE_SUSPENDED);
	/*
	 * The platform bus type layer tells the ACPI PM domain powers up the
	 * device, so set the runtime PM status of it to "active".
	 */
	FUNC11(dev);
	FUNC10(dev);
	FUNC12(dev);

	ret = FUNC13(&dev->kobj, &acpi_tad_attr_group);
	if (ret)
		goto fail;

	if (caps & ACPI_TAD_DC_WAKE) {
		ret = FUNC13(&dev->kobj, &acpi_tad_dc_attr_group);
		if (ret)
			goto fail;
	}

	if (caps & ACPI_TAD_RT) {
		ret = FUNC13(&dev->kobj, &acpi_tad_time_attr_group);
		if (ret)
			goto fail;
	}

	return 0;

fail:
	FUNC4(pdev);
	return ret;
}