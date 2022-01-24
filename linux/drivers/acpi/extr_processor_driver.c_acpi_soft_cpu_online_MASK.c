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
struct TYPE_2__ {scalar_t__ need_hotplug_init; } ;
struct acpi_processor {int /*<<< orphan*/  id; TYPE_1__ flags; int /*<<< orphan*/  handle; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_processor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_processor*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_processor*) ; 
 struct acpi_processor* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processors ; 

__attribute__((used)) static int FUNC9(unsigned int cpu)
{
	struct acpi_processor *pr = FUNC7(processors, cpu);
	struct acpi_device *device;

	if (!pr || FUNC2(pr->handle, &device))
		return 0;
	/*
	 * CPU got physically hotplugged and onlined for the first time:
	 * Initialize missing things.
	 */
	if (pr->flags.need_hotplug_init) {
		int ret;

		FUNC8("Will online and init hotplugged CPU: %d\n",
			pr->id);
		pr->flags.need_hotplug_init = 0;
		ret = FUNC1(device);
		FUNC0(ret, "Failed to start CPU: %d\n", pr->id);
	} else {
		/* Normal CPU soft online event. */
		FUNC4(pr, 0);
		FUNC3(pr);
		FUNC5(pr, false);
		FUNC6(pr);
	}
	return 0;
}