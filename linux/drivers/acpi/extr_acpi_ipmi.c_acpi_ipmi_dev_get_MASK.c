#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct acpi_ipmi_device {int /*<<< orphan*/  kref; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipmi_lock; struct acpi_ipmi_device* selected_smi; } ;

/* Variables and functions */
 TYPE_1__ driver_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct acpi_ipmi_device *FUNC3(void)
{
	struct acpi_ipmi_device *ipmi_device = NULL;

	FUNC1(&driver_data.ipmi_lock);
	if (driver_data.selected_smi) {
		ipmi_device = driver_data.selected_smi;
		FUNC0(&ipmi_device->kref);
	}
	FUNC2(&driver_data.ipmi_lock);

	return ipmi_device;
}