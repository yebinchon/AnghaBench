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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct acpi_ged_device {int /*<<< orphan*/  event_list; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_ged_request_interrupt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct acpi_ged_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct acpi_ged_device* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct acpi_ged_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct acpi_ged_device *geddev;
	acpi_status acpi_ret;

	geddev = FUNC5(&pdev->dev, sizeof(*geddev), GFP_KERNEL);
	if (!geddev)
		return -ENOMEM;

	geddev->dev = &pdev->dev;
	FUNC2(&geddev->event_list);
	acpi_ret = FUNC3(FUNC1(&pdev->dev), "_CRS",
				       acpi_ged_request_interrupt, geddev);
	if (FUNC0(acpi_ret)) {
		FUNC4(&pdev->dev, "unable to parse the _CRS record\n");
		return -EINVAL;
	}
	FUNC6(pdev, geddev);

	return 0;
}