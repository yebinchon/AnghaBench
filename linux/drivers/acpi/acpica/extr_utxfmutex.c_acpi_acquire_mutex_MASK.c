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
struct TYPE_2__ {int /*<<< orphan*/  os_mutex; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  acpi_string ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union acpi_operand_object**) ; 

acpi_status
FUNC3(acpi_handle handle, acpi_string pathname, u16 timeout)
{
	acpi_status status;
	union acpi_operand_object *mutex_obj;

	/* Get the low-level mutex associated with Handle:Pathname */

	status = FUNC2(handle, pathname, &mutex_obj);
	if (FUNC0(status)) {
		return (status);
	}

	/* Acquire the OS mutex */

	status = FUNC1(mutex_obj->mutex.os_mutex, timeout);
	return (status);
}