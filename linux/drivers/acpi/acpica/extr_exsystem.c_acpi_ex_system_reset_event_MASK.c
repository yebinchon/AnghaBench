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
struct TYPE_2__ {int /*<<< orphan*/  os_semaphore; } ;
union acpi_operand_object {TYPE_1__ event; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_semaphore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ACPI_NO_UNIT_LIMIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(union acpi_operand_object *obj_desc)
{
	acpi_status status = AE_OK;
	acpi_semaphore temp_semaphore;

	FUNC0();

	/*
	 * We are going to simply delete the existing semaphore and
	 * create a new one!
	 */
	status =
	    FUNC2(ACPI_NO_UNIT_LIMIT, 0, &temp_semaphore);
	if (FUNC1(status)) {
		(void)FUNC3(obj_desc->event.os_semaphore);
		obj_desc->event.os_semaphore = temp_semaphore;
	}

	return (status);
}