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
struct acpi_nfit_desc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int FUNC0 (struct acpi_nfit_desc*) ; 
 scalar_t__ FUNC1 (struct acpi_nfit_desc*) ; 
 scalar_t__ FUNC2 (struct acpi_nfit_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct acpi_nfit_desc *acpi_desc)
{
	int rc;

	if (FUNC1(acpi_desc))
		return -ENOMEM;

	rc = FUNC0(acpi_desc);

	if (rc < 0 && rc != -ENOSPC)
		return rc;

	if (FUNC2(acpi_desc))
		FUNC3(acpi_desc->dev, "Failed to process ARS records\n");

	return rc;
}