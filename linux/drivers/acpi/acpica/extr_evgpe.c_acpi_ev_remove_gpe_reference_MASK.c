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
struct acpi_gpe_event_info {int /*<<< orphan*/  runtime_count; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_DISABLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_gpe_event_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_remove_gpe_reference ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC6(struct acpi_gpe_event_info *gpe_event_info)
{
	acpi_status status = AE_OK;

	FUNC1(ev_remove_gpe_reference);

	if (!gpe_event_info->runtime_count) {
		FUNC5(AE_LIMIT);
	}

	gpe_event_info->runtime_count--;
	if (!gpe_event_info->runtime_count) {

		/* Disable on last reference */

		status = FUNC3(gpe_event_info);
		if (FUNC2(status)) {
			status =
			    FUNC4(gpe_event_info,
						ACPI_GPE_DISABLE);
		}

		if (FUNC0(status)) {
			gpe_event_info->runtime_count++;
		}
	}

	FUNC5(status);
}