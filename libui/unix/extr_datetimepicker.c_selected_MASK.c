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
struct TYPE_3__ {int /*<<< orphan*/  seconds; int /*<<< orphan*/  minutes; int /*<<< orphan*/  ampm; int /*<<< orphan*/  hours; scalar_t__ hasTime; int /*<<< orphan*/  calendar; scalar_t__ hasDate; } ;
typedef  TYPE_1__ uiprivDateTimePickerWidget ;
typedef  int guint ;
typedef  int /*<<< orphan*/  GDateTime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GDateTime *FUNC5(uiprivDateTimePickerWidget *d)
{
	// choose a day for which all times are likely to be valid for the default date in case we're only dealing with time
	guint year = 1970, month = 1, day = 1;
	guint hour = 0, minute = 0, second = 0;

	if (d->hasDate) {
		FUNC3(FUNC0(d->calendar), &year, &month, &day);
		month++;		// GtkCalendar/GDateTime differences
	}
	if (d->hasTime) {
		hour = FUNC4(FUNC1(d->hours));
		if (FUNC4(FUNC1(d->ampm)) != 0)
			hour += 12;
		minute = FUNC4(FUNC1(d->minutes));
		second = FUNC4(FUNC1(d->seconds));
	}
	return FUNC2(year, month, day, hour, minute, second);
}