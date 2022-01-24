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
struct TYPE_3__ {int /*<<< orphan*/  setBlock; int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ uiDateTimePicker ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tm*,struct tm const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(uiDateTimePicker *d, const struct tm *time)
{
	time_t t;
	struct tm tmbuf;

	// TODO find a better way to avoid this; possibly by removing the signal entirely, or the call to dateTimeChanged() (most likely both)
	FUNC2(d->d, d->setBlock);

	// Copy time because mktime() modifies its argument
	FUNC4(&tmbuf, time, sizeof (struct tm));
	t = FUNC5(&tmbuf);

	FUNC6(d->d, FUNC1(t));
	FUNC0(d->d);

	FUNC3(d->d, d->setBlock);
}