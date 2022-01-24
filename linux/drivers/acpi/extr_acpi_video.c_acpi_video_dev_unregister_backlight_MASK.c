#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct acpi_video_device {TYPE_4__* cooling_dev; TYPE_2__* dev; TYPE_5__* brightness; int /*<<< orphan*/ * backlight; } ;
struct TYPE_10__ {struct TYPE_10__* levels; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {TYPE_3__ device; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(struct acpi_video_device *device)
{
	if (device->backlight) {
		FUNC0(device->backlight);
		device->backlight = NULL;
	}
	if (device->brightness) {
		FUNC1(device->brightness->levels);
		FUNC1(device->brightness);
		device->brightness = NULL;
	}
	if (device->cooling_dev) {
		FUNC2(&device->dev->dev.kobj, "thermal_cooling");
		FUNC2(&device->cooling_dev->device.kobj, "device");
		FUNC3(device->cooling_dev);
		device->cooling_dev = NULL;
	}
}