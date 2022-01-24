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
struct acpi_tad_driver_data {int capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_TAD_AC_TIMER ; 
 int /*<<< orphan*/  ACPI_TAD_DC_TIMER ; 
 int ACPI_TAD_DC_WAKE ; 
 int /*<<< orphan*/  acpi_tad_attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_tad_dc_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 struct acpi_tad_driver_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct acpi_tad_driver_data *dd = FUNC2(dev);

	FUNC3(dev, false);

	FUNC5(dev);

	if (dd->capabilities & ACPI_TAD_DC_WAKE)
		FUNC7(&dev->kobj, &acpi_tad_dc_attr_group);

	FUNC7(&dev->kobj, &acpi_tad_attr_group);

	FUNC1(dev, ACPI_TAD_AC_TIMER);
	FUNC0(dev, ACPI_TAD_AC_TIMER);
	if (dd->capabilities & ACPI_TAD_DC_WAKE) {
		FUNC1(dev, ACPI_TAD_DC_TIMER);
		FUNC0(dev, ACPI_TAD_DC_TIMER);
	}

	FUNC6(dev);
	FUNC4(dev);
	return 0;
}