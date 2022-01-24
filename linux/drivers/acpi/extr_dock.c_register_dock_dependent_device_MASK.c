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
struct dock_station {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dock_station*,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dock_station*,struct acpi_device*) ; 
 struct dock_station* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct acpi_device *adev,
				    acpi_handle dshandle)
{
	struct dock_station *ds = FUNC2(dshandle);

	if (ds && !FUNC1(ds, adev))
		FUNC0(ds, adev);
}