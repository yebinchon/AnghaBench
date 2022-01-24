#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {void* hasDate; void* hasTime; int /*<<< orphan*/ * mouse; int /*<<< orphan*/ * keyboard; void* toggledSignal; struct TYPE_20__* window; struct TYPE_20__* box; struct TYPE_20__* ampm; struct TYPE_20__* timebox; int /*<<< orphan*/  ampmBlock; struct TYPE_20__* seconds; int /*<<< orphan*/  secondsBlock; struct TYPE_20__* minutes; int /*<<< orphan*/  minutesBlock; struct TYPE_20__* hours; int /*<<< orphan*/  hoursBlock; struct TYPE_20__* calendar; void* calendarBlock; } ;
typedef  TYPE_1__ uiprivDateTimePickerWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_WINDOW_TYPE_HINT_COMBO ; 
 int /*<<< orphan*/  GTK_ALIGN_CENTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  GTK_ORIENTATION_VERTICAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_WINDOW_POPUP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/ * ampmSpinboxInput ; 
 int /*<<< orphan*/  ampmSpinboxOutput ; 
 int /*<<< orphan*/  buttonReleased ; 
 int /*<<< orphan*/  dateChanged ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  grabBroken ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 TYPE_1__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * hoursSpinboxInput ; 
 int /*<<< orphan*/  hoursSpinboxOutput ; 
 void* FUNC29 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  onToggled ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zeroPadSpinbox ; 

__attribute__((used)) static void FUNC31(uiprivDateTimePickerWidget *d)
{
	d->window = FUNC20(GTK_WINDOW_POPUP);
	FUNC25(FUNC4(d->window), FALSE);
	FUNC21(FUNC4(d->window), FUNC3(d));
	FUNC22(FUNC4(d->window), FALSE);
	FUNC23(FUNC4(d->window), FALSE);
	FUNC28(FUNC4(d->window), GDK_WINDOW_TYPE_HINT_COMBO);
	FUNC27(FUNC4(d->window), TRUE);
	FUNC26(FUNC4(d->window), TRUE);
	FUNC24(FUNC4(d->window), FALSE);
	FUNC13(FUNC1(d->window), 12);
	// and make it stand out a bit
	FUNC16(FUNC17(d->window), "frame");

	d->box = FUNC8(GTK_ORIENTATION_VERTICAL, 6);
	FUNC12(FUNC1(d->window), d->box);

	d->calendar = FUNC9();
	d->calendarBlock = FUNC7(d->calendar, "day-selected", FUNC5(dateChanged), d);
	FUNC12(FUNC1(d->box), d->calendar);

	d->timebox = FUNC8(GTK_ORIENTATION_HORIZONTAL, 6);
	FUNC18(d->timebox, GTK_ALIGN_CENTER);
	FUNC12(FUNC1(d->box), d->timebox);

	d->hours = FUNC29(d, 0, 11, hoursSpinboxInput, hoursSpinboxOutput, &(d->hoursBlock));
	FUNC12(FUNC1(d->timebox), d->hours);

	FUNC12(FUNC1(d->timebox),
		FUNC14(":"));

	d->minutes = FUNC29(d, 0, 59, NULL, zeroPadSpinbox, &(d->minutesBlock));
	FUNC12(FUNC1(d->timebox), d->minutes);

	FUNC12(FUNC1(d->timebox),
		FUNC14(":"));

	d->seconds = FUNC29(d, 0, 59, NULL, zeroPadSpinbox, &(d->secondsBlock));
	FUNC12(FUNC1(d->timebox), d->seconds);

	// LONGTERM this should be the case, but that interferes with grabs
	// switch to it when we can drop GTK+ 3.10 and use popovers
#if 0
	d->ampm = gtk_combo_box_text_new();
	gtk_combo_box_text_append(GTK_COMBO_BOX_TEXT(d->ampm), NULL, "AM");
	gtk_combo_box_text_append(GTK_COMBO_BOX_TEXT(d->ampm), NULL, "PM");
#endif
	d->ampm = FUNC29(d, 0, 1, ampmSpinboxInput, ampmSpinboxOutput, &(d->ampmBlock));
	FUNC15(FUNC2(d->ampm), FALSE);
	FUNC18(d->ampm, GTK_ALIGN_CENTER);
	FUNC12(FUNC1(d->timebox), d->ampm);

	FUNC19(d->box);

	FUNC7(d->window, "grab-broken-event", FUNC5(grabBroken), d);
	FUNC7(d->window, "button-release-event", FUNC5(buttonReleased), d);

	d->toggledSignal = FUNC7(d, "toggled", FUNC5(onToggled), NULL);
	d->keyboard = NULL;
	d->mouse = NULL;

	d->hasTime = TRUE;
	d->hasDate = TRUE;

	// set the current date/time
	FUNC30(d, FUNC6());
}