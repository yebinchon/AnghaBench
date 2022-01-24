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
struct semaphore {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ **** acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 struct semaphore* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct semaphore*,int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(u32 max_units, u32 initial_units, acpi_handle * handle)
{
	struct semaphore *sem = NULL;

	sem = FUNC1(sizeof(struct semaphore));
	if (!sem)
		return AE_NO_MEMORY;

	FUNC2(sem, initial_units);

	*handle = *(acpi_handle *) sem;

	FUNC0((ACPI_DB_MUTEX, "Creating semaphore[%p|%d].\n",
			  *handle, initial_units));

	return AE_OK;
}