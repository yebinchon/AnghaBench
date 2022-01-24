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
typedef  int /*<<< orphan*/  uint32_t ;
struct acpi_buffer {int length; void* pointer; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_PROCESSOR_AGGREGATOR_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isolated_cpus_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(acpi_handle handle)
{
	int num_cpus;
	uint32_t idle_cpus;
	struct acpi_buffer param = {
		.length = 4,
		.pointer = (void *)&idle_cpus,
	};

	FUNC4(&isolated_cpus_lock);
	num_cpus = FUNC3(handle);
	if (num_cpus < 0) {
		FUNC5(&isolated_cpus_lock);
		return;
	}
	FUNC1(num_cpus);
	idle_cpus = FUNC2();
	FUNC0(handle, ACPI_PROCESSOR_AGGREGATOR_NOTIFY, 0, &param);
	FUNC5(&isolated_cpus_lock);
}