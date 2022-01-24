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
struct device {int dummy; } ;
struct acpi_nfit_desc {scalar_t__ scrub_mode; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ARS_REQ_LONG ; 
 int /*<<< orphan*/  ARS_REQ_SHORT ; 
 scalar_t__ HW_ERROR_SCRUB_ON ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_nfit_desc*,int /*<<< orphan*/ ) ; 
 struct acpi_nfit_desc* FUNC1 (struct device*) ; 

__attribute__((used)) static void FUNC2(struct device *dev, acpi_handle handle)
{
	struct acpi_nfit_desc *acpi_desc = FUNC1(dev);

	if (acpi_desc->scrub_mode == HW_ERROR_SCRUB_ON)
		FUNC0(acpi_desc, ARS_REQ_LONG);
	else
		FUNC0(acpi_desc, ARS_REQ_SHORT);
}