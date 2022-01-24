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
struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_video_device {TYPE_1__* brightness; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {unsigned long count; int* levels; } ;

/* Variables and functions */
 unsigned long ACPI_VIDEO_FIRST_LEVEL ; 
 int EINVAL ; 
 struct acpi_video_device* FUNC0 (struct acpi_device*) ; 
 int FUNC1 (struct acpi_video_device*,int) ; 

__attribute__((used)) static int
FUNC2(struct thermal_cooling_device *cooling_dev, unsigned long state)
{
	struct acpi_device *device = cooling_dev->devdata;
	struct acpi_video_device *video = FUNC0(device);
	int level;

	if (state >= video->brightness->count - ACPI_VIDEO_FIRST_LEVEL)
		return -EINVAL;

	state = video->brightness->count - state;
	level = video->brightness->levels[state - 1];
	return FUNC1(video, level);
}