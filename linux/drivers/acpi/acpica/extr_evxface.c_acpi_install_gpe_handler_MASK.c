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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
typedef  int /*<<< orphan*/  acpi_gpe_handler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*)) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(acpi_handle gpe_device,
			 u32 gpe_number,
			 u32 type, acpi_gpe_handler address, void *context)
{
	acpi_status status;

	FUNC0(acpi_install_gpe_handler);

	status = FUNC1(gpe_device, gpe_number, type,
					     FALSE, address, context);

	FUNC2(status);
}