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
struct acpi_device {int dummy; } ;
typedef  int acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 void* FUNC1 (struct acpi_device*) ; 

__attribute__((used)) static acpi_status FUNC2(acpi_handle obj_handle,
					  u32 nesting_level,
					  void *context, void **return_value)
{
	struct acpi_device *d;

	if (FUNC0(obj_handle, &d))
		return 0;

	*return_value = FUNC1(d);
	return 1;
}