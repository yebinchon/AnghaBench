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
struct acpi_processor {int /*<<< orphan*/  id; int /*<<< orphan*/  handle; int /*<<< orphan*/  performance; } ;

/* Variables and functions */
 int FUNC0 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ignore_ppc ; 

void FUNC3(struct acpi_processor *pr, int event_flag)
{
	int ret;

	if (ignore_ppc || !pr->performance) {
		/*
		 * Only when it is notification event, the _OST object
		 * will be evaluated. Otherwise it is skipped.
		 */
		if (event_flag)
			FUNC1(pr->handle, 1);
		return;
	}

	ret = FUNC0(pr);
	/*
	 * Only when it is notification event, the _OST object
	 * will be evaluated. Otherwise it is skipped.
	 */
	if (event_flag) {
		if (ret < 0)
			FUNC1(pr->handle, 1);
		else
			FUNC1(pr->handle, 0);
	}
	if (ret >= 0)
		FUNC2(pr->id);
}