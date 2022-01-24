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
typedef  int u32 ;
struct semaphore {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 int /*<<< orphan*/  acpi_os_initialized ; 
 int /*<<< orphan*/  FUNC1 (struct semaphore*) ; 

acpi_status FUNC2(acpi_handle handle, u32 units)
{
	struct semaphore *sem = (struct semaphore *)handle;

	if (!acpi_os_initialized)
		return AE_OK;

	if (!sem || (units < 1))
		return AE_BAD_PARAMETER;

	if (units > 1)
		return AE_SUPPORT;

	FUNC0((ACPI_DB_MUTEX, "Signaling semaphore[%p|%d]\n", handle,
			  units));

	FUNC1(sem);

	return AE_OK;
}