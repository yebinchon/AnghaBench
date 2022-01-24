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
struct tm {int tm_mon; int tm_wday; int tm_hour; } ;
struct TYPE_3__ {char* name; int offset; scalar_t__ dst; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char const*,char*) ; 
 char** month_names ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char*) ; 
 TYPE_1__* timezone_names ; 
 char** weekday_names ; 

__attribute__((used)) static int FUNC4(const char *date, struct tm *tm, int *offset)
{
	int i;

	for (i = 0; i < 12; i++) {
		int match = FUNC1(date, month_names[i]);
		if (match >= 3) {
			tm->tm_mon = i;
			return match;
		}
	}

	for (i = 0; i < 7; i++) {
		int match = FUNC1(date, weekday_names[i]);
		if (match >= 3) {
			tm->tm_wday = i;
			return match;
		}
	}

	for (i = 0; i < FUNC0(timezone_names); i++) {
		int match = FUNC1(date, timezone_names[i].name);
		if (match >= 3 || match == FUNC3(timezone_names[i].name)) {
			int off = timezone_names[i].offset;

			/* This is bogus, but we like summer */
			off += timezone_names[i].dst;

			/* Only use the tz name offset if we don't have anything better */
			if (*offset == -1)
				*offset = 60*off;

			return match;
		}
	}

	if (FUNC1(date, "PM") == 2) {
		tm->tm_hour = (tm->tm_hour % 12) + 12;
		return 2;
	}

	if (FUNC1(date, "AM") == 2) {
		tm->tm_hour = (tm->tm_hour % 12) + 0;
		return 2;
	}

	/* BAD CRAP */
	return FUNC2(date);
}