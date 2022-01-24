#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {union acpi_operand_object* mutex; int /*<<< orphan*/  sync_level; } ;
struct TYPE_3__ {int /*<<< orphan*/  sync_level; int /*<<< orphan*/  os_mutex; } ;
union acpi_operand_object {TYPE_2__ method; TYPE_1__ mutex; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_MUTEX ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 union acpi_operand_object* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_create_method_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC6(union acpi_operand_object *method_desc)
{
	union acpi_operand_object *mutex_desc;
	acpi_status status;

	FUNC1(ds_create_method_mutex);

	/* Create the new mutex object */

	mutex_desc = FUNC3(ACPI_TYPE_MUTEX);
	if (!mutex_desc) {
		FUNC5(AE_NO_MEMORY);
	}

	/* Create the actual OS Mutex */

	status = FUNC2(&mutex_desc->mutex.os_mutex);
	if (FUNC0(status)) {
		FUNC4(mutex_desc);
		FUNC5(status);
	}

	mutex_desc->mutex.sync_level = method_desc->method.sync_level;
	method_desc->method.mutex = mutex_desc;
	FUNC5(AE_OK);
}