#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum acpi_backlight_type { ____Placeholder_acpi_backlight_type } acpi_backlight_type ;
struct TYPE_3__ {scalar_t__ priority; int /*<<< orphan*/  notifier_call; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 long ACPI_VIDEO_BACKLIGHT ; 
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ acpi_backlight_cmdline ; 
 scalar_t__ acpi_backlight_dmi ; 
 int acpi_backlight_native ; 
 scalar_t__ acpi_backlight_undef ; 
 int acpi_backlight_vendor ; 
 int acpi_backlight_video ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  acpi_video_backlight_notify ; 
 int /*<<< orphan*/  acpi_video_backlight_notify_work ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ backlight_nb ; 
 int backlight_notifier_registered ; 
 int /*<<< orphan*/  backlight_notify_work ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_video ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_detect_dmi_table ; 

enum acpi_backlight_type FUNC9(void)
{
	static DEFINE_MUTEX(init_mutex);
	static bool init_done;
	static long video_caps;

	/* Parse cmdline, dmi and acpi only once */
	FUNC7(&init_mutex);
	if (!init_done) {
		FUNC2();
		FUNC6(video_detect_dmi_table);
		FUNC3(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
				    ACPI_UINT32_MAX, find_video, NULL,
				    &video_caps, NULL);
		FUNC0(&backlight_notify_work,
			  acpi_video_backlight_notify_work);
		backlight_nb.notifier_call = acpi_video_backlight_notify;
		backlight_nb.priority = 0;
		if (FUNC5(&backlight_nb) == 0)
			backlight_notifier_registered = true;
		init_done = true;
	}
	FUNC8(&init_mutex);

	if (acpi_backlight_cmdline != acpi_backlight_undef)
		return acpi_backlight_cmdline;

	if (acpi_backlight_dmi != acpi_backlight_undef)
		return acpi_backlight_dmi;

	if (!(video_caps & ACPI_VIDEO_BACKLIGHT))
		return acpi_backlight_vendor;

	if (FUNC1() && FUNC4(BACKLIGHT_RAW))
		return acpi_backlight_native;

	return acpi_backlight_video;
}