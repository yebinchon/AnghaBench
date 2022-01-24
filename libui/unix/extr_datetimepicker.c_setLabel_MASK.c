#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ hasDate; scalar_t__ hasTime; } ;
typedef  TYPE_1__ uiprivDateTimePickerWidget ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GDateTime ;

/* Variables and functions */
 int /*<<< orphan*/  D_FMT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  T_FMT ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(uiprivDateTimePickerWidget *d)
{
	GDateTime *dt;
	char *fmt;
	char *msg;
	gboolean free;

	dt = FUNC7(d);
	free = FALSE;
	if (d->hasDate && d->hasTime) {
		// don't use D_T_FMT; that's too verbose
		fmt = FUNC4("%s %s", FUNC6(D_FMT), FUNC6(T_FMT));
		free = TRUE;
	} else if (d->hasDate)
		fmt = FUNC6(D_FMT);
	else
		fmt = FUNC6(T_FMT);
	msg = FUNC1(dt, fmt);
	FUNC5(FUNC0(d), msg);
	FUNC3(msg);
	if (free)
		FUNC3(fmt);
	FUNC2(dt);
}