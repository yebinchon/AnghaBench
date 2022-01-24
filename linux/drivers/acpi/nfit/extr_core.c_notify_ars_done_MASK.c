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
struct acpi_nfit_desc {scalar_t__ scrub_count_state; int /*<<< orphan*/  scrub_count; int /*<<< orphan*/  scrub_flags; int /*<<< orphan*/  init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct acpi_nfit_desc *acpi_desc)
{
	FUNC1(&acpi_desc->init_mutex);

	FUNC0(ARS_BUSY, &acpi_desc->scrub_flags);
	acpi_desc->scrub_count++;
	if (acpi_desc->scrub_count_state)
		FUNC2(acpi_desc->scrub_count_state);
}