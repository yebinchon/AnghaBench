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
struct acpi_device_id {scalar_t__ driver_data; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INT340X_THERMAL ; 
 int /*<<< orphan*/  CONFIG_INTEL_SOC_DTS_THERMAL ; 
 scalar_t__ INT3401_DEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *adev,
					const struct acpi_device_id *id)
{
	if (FUNC0(CONFIG_INT340X_THERMAL))
		FUNC1(adev, NULL);
	/* Intel SoC DTS thermal driver needs INT3401 to set IRQ descriptor */
	else if (FUNC0(CONFIG_INTEL_SOC_DTS_THERMAL) &&
		 id->driver_data == INT3401_DEVICE)
		FUNC1(adev, NULL);
	return 1;
}