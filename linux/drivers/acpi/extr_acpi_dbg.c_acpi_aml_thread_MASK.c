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
typedef  int /*<<< orphan*/  (* acpi_osd_exec_callback ) (void*) ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/ * thread; int /*<<< orphan*/  usages; void* context; int /*<<< orphan*/  (* function ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ acpi_aml_io ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *unused)
{
	acpi_osd_exec_callback function = NULL;
	void *context;

	FUNC1(&acpi_aml_io.lock);
	if (acpi_aml_io.function) {
		acpi_aml_io.usages++;
		function = acpi_aml_io.function;
		context = acpi_aml_io.context;
	}
	FUNC2(&acpi_aml_io.lock);

	if (function)
		function(context);

	FUNC1(&acpi_aml_io.lock);
	acpi_aml_io.usages--;
	if (!FUNC0()) {
		acpi_aml_io.thread = NULL;
		FUNC3(&acpi_aml_io.wait);
	}
	FUNC2(&acpi_aml_io.lock);

	return 0;
}