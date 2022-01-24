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
struct TYPE_3__ {int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ uiDateTimePicker ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  GDateTime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*,struct tm*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(uiDateTimePicker *d, struct tm *time)
{
	time_t t;
	struct tm tmbuf;
	GDateTime *dt;

	dt = FUNC4(d->d);
	t = FUNC0(dt);
	FUNC1(dt);

	// Copy time to minimize a race condition
	// time.h functions use global non-thread-safe data
	tmbuf = *FUNC2(&t);
	FUNC3(time, &tmbuf, sizeof (struct tm));
}