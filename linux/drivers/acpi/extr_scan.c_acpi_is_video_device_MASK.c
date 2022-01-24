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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 long ACPI_VIDEO_DEVICE_POSTING ; 
 long ACPI_VIDEO_OUTPUT_SWITCHING ; 
 long ACPI_VIDEO_ROM_AVAILABLE ; 
 int /*<<< orphan*/  acpi_backlight_cap_match ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,long*,int /*<<< orphan*/ *) ; 

long FUNC2(acpi_handle handle)
{
	long video_caps = 0;

	/* Is this device able to support video switching ? */
	if (FUNC0(handle, "_DOD") || FUNC0(handle, "_DOS"))
		video_caps |= ACPI_VIDEO_OUTPUT_SWITCHING;

	/* Is this device able to retrieve a video ROM ? */
	if (FUNC0(handle, "_ROM"))
		video_caps |= ACPI_VIDEO_ROM_AVAILABLE;

	/* Is this device able to configure which video head to be POSTed ? */
	if (FUNC0(handle, "_VPO") &&
	    FUNC0(handle, "_GPD") &&
	    FUNC0(handle, "_SPD"))
		video_caps |= ACPI_VIDEO_DEVICE_POSTING;

	/* Only check for backlight functionality if one of the above hit. */
	if (video_caps)
		FUNC1(ACPI_TYPE_DEVICE, handle,
				    ACPI_UINT32_MAX, acpi_backlight_cap_match, NULL,
				    &video_caps, NULL);

	return video_caps;
}