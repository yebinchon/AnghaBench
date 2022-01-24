#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  size_t acpi_size ;
struct TYPE_4__ {struct TYPE_4__* next; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_1__* acpi_default_supported_interfaces ; 
 int /*<<< orphan*/  acpi_gbl_osi_mutex ; 
 TYPE_1__* acpi_gbl_supported_interfaces ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(void)
{
	acpi_status status;
	u32 i;

	status = FUNC2(acpi_gbl_osi_mutex, ACPI_WAIT_FOREVER);
	if (FUNC1(status)) {
		return (status);
	}

	acpi_gbl_supported_interfaces = acpi_default_supported_interfaces;

	/* Link the static list of supported interfaces */

	for (i = 0;
	     i < (FUNC0(acpi_default_supported_interfaces) - 1);
	     i++) {
		acpi_default_supported_interfaces[i].next =
		    &acpi_default_supported_interfaces[(acpi_size)i + 1];
	}

	FUNC3(acpi_gbl_osi_mutex);
	return (AE_OK);
}