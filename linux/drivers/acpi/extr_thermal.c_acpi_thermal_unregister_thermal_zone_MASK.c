#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct acpi_thermal {TYPE_3__* device; TYPE_4__* thermal_zone; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_8__ {TYPE_2__ device; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {int /*<<< orphan*/  handle; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC3(struct acpi_thermal *tz)
{
	FUNC1(&tz->device->dev.kobj, "thermal_zone");
	FUNC1(&tz->thermal_zone->device.kobj, "device");
	FUNC2(tz->thermal_zone);
	tz->thermal_zone = NULL;
	FUNC0(tz->device->handle);
}