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
struct acpi_gpe_event_info {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_gpe_event_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_enable_gpe ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status FUNC3(struct acpi_gpe_event_info *gpe_event_info)
{
	acpi_status status;

	FUNC0(ev_enable_gpe);

	/* Enable the requested GPE */

	status = FUNC1(gpe_event_info, ACPI_GPE_ENABLE);
	FUNC2(status);
}