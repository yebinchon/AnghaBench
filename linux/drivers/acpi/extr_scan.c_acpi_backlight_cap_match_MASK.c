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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long ACPI_VIDEO_BACKLIGHT ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static acpi_status
FUNC2(acpi_handle handle, u32 level, void *context,
			  void **return_value)
{
	long *cap = context;

	if (FUNC1(handle, "_BCM") &&
	    FUNC1(handle, "_BCL")) {
		FUNC0((ACPI_DB_INFO, "Found generic backlight "
				  "support\n"));
		*cap |= ACPI_VIDEO_BACKLIGHT;
		/* We have backlight support, no need to scan further */
		return AE_CTRL_TERMINATE;
	}
	return 0;
}