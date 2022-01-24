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
struct TYPE_3__ {int /*<<< orphan*/  secondsBlock; int /*<<< orphan*/  seconds; int /*<<< orphan*/  minutesBlock; int /*<<< orphan*/  minutes; int /*<<< orphan*/  hoursBlock; int /*<<< orphan*/  hours; int /*<<< orphan*/  ampmBlock; int /*<<< orphan*/  ampm; scalar_t__ hasTime; int /*<<< orphan*/  calendarBlock; int /*<<< orphan*/  calendar; scalar_t__ hasDate; } ;
typedef  TYPE_1__ uiprivDateTimePickerWidget ;
typedef  int gint ;
typedef  int /*<<< orphan*/  GDateTime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(uiprivDateTimePickerWidget *d, GDateTime *dt)
{
	gint year, month, day;
	gint hour;

	// notice how we block signals from firing
	if (d->hasDate) {
		FUNC5(dt, &year, &month, &day);
		month--;			// GDateTime/GtkCalendar differences
		FUNC7(d->calendar, d->calendarBlock);
		FUNC10(FUNC0(d->calendar), month, year);
		FUNC9(FUNC0(d->calendar), day);
		FUNC8(d->calendar, d->calendarBlock);
	}
	if (d->hasTime) {
		hour = FUNC2(dt);
		if (hour >= 12) {
			hour -= 12;
			FUNC11(FUNC1(d->ampm), 1, d->ampmBlock);
		}
		FUNC11(FUNC1(d->hours), hour, d->hoursBlock);
		FUNC11(FUNC1(d->minutes), FUNC3(dt), d->minutesBlock);
		FUNC11(FUNC1(d->seconds), FUNC4(dt), d->secondsBlock);
	}
	FUNC6(dt);
}