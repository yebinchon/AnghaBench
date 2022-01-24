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
struct acpi_processor {int /*<<< orphan*/  handle; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_processor*,int) ; 
 struct acpi_processor* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  processors ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct acpi_processor *pr = FUNC2(processors, cpu);
	struct acpi_device *device;

	if (!pr || FUNC0(pr->handle, &device))
		return 0;

	FUNC1(pr, true);
	return 0;
}