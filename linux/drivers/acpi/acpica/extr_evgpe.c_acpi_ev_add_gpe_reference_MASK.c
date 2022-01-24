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
typedef  scalar_t__ u8 ;
struct acpi_gpe_event_info {int runtime_count; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ACPI_UINT8_MAX ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  ev_add_gpe_reference ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(struct acpi_gpe_event_info *gpe_event_info,
			  u8 clear_on_enable)
{
	acpi_status status = AE_OK;

	FUNC1(ev_add_gpe_reference);

	if (gpe_event_info->runtime_count == ACPI_UINT8_MAX) {
		FUNC6(AE_LIMIT);
	}

	gpe_event_info->runtime_count++;
	if (gpe_event_info->runtime_count == 1) {

		/* Enable on first reference */

		if (clear_on_enable) {
			(void)FUNC5(gpe_event_info);
		}

		status = FUNC4(gpe_event_info);
		if (FUNC2(status)) {
			status = FUNC3(gpe_event_info);
		}

		if (FUNC0(status)) {
			gpe_event_info->runtime_count--;
		}
	}

	FUNC6(status);
}