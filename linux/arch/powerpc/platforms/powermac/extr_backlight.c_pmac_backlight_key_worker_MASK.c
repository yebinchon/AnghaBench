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
struct work_struct {int dummy; } ;
struct backlight_properties {int brightness; int max_brightness; } ;
struct TYPE_3__ {struct backlight_properties props; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  kernel_backlight_disabled ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* pmac_backlight ; 
 scalar_t__ pmac_backlight_key_queued ; 
 int /*<<< orphan*/  pmac_backlight_mutex ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	if (FUNC0(&kernel_backlight_disabled))
		return;

	FUNC2(&pmac_backlight_mutex);
	if (pmac_backlight) {
		struct backlight_properties *props;
		int brightness;

		props = &pmac_backlight->props;

		brightness = props->brightness +
			((pmac_backlight_key_queued?-1:1) *
			 (props->max_brightness / 15));

		if (brightness < 0)
			brightness = 0;
		else if (brightness > props->max_brightness)
			brightness = props->max_brightness;

		props->brightness = brightness;
		FUNC1(pmac_backlight);
	}
	FUNC3(&pmac_backlight_mutex);
}