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
struct resource {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 scalar_t__ FUNC1 (struct acpi_device*,struct resource*) ; 

__attribute__((used)) static acpi_status FUNC2(acpi_handle handle, u32 depth,
					 void *context, void **ret)
{
	struct resource *res = context;
	struct acpi_device **consumer = (struct acpi_device **) ret;
	struct acpi_device *adev;

	if (FUNC0(handle, &adev))
		return AE_OK;

	if (FUNC1(adev, res)) {
		*consumer = adev;
		return AE_CTRL_TERMINATE;
	}

	return AE_OK;
}