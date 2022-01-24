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
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ power_setup_done; scalar_t__ power; } ;
struct acpi_processor {TYPE_1__ flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  acpi_cpuidle_device ; 
 int /*<<< orphan*/  acpi_idle_driver ; 
 scalar_t__ acpi_processor_registered ; 
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 struct cpuidle_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct acpi_processor *pr)
{
	struct cpuidle_device *dev = FUNC3(acpi_cpuidle_device, pr->id);

	if (FUNC2())
		return 0;

	if (pr->flags.power) {
		FUNC0(dev);
		acpi_processor_registered--;
		if (acpi_processor_registered == 0)
			FUNC1(&acpi_idle_driver);
	}

	pr->flags.power_setup_done = 0;
	return 0;
}