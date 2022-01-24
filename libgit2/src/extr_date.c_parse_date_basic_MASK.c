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
typedef  int /*<<< orphan*/  tm ;
typedef  scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_isdst; int tm_hour; int tm_min; int tm_sec; } ;
typedef  int git_time_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (char const) ; 
 size_t FUNC2 (char const*,struct tm*,int*) ; 
 size_t FUNC3 (char const*,struct tm*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int*,int*) ; 
 size_t FUNC5 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct tm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct tm*) ; 
 int FUNC8 (struct tm*) ; 

__attribute__((used)) static int FUNC9(const char *date, git_time_t *timestamp, int *offset)
{
	struct tm tm;
	int tm_gmt;
	git_time_t dummy_timestamp;
	int dummy_offset;

	if (!timestamp)
		timestamp = &dummy_timestamp;
	if (!offset)
		offset = &dummy_offset;

	FUNC6(&tm, 0, sizeof(tm));
	tm.tm_year = -1;
	tm.tm_mon = -1;
	tm.tm_mday = -1;
	tm.tm_isdst = -1;
	tm.tm_hour = -1;
	tm.tm_min = -1;
	tm.tm_sec = -1;
	*offset = -1;
	tm_gmt = 0;

	if (*date == '@' &&
	    !FUNC4(date + 1, timestamp, offset))
		return 0; /* success */
	for (;;) {
		size_t match = 0;
		unsigned char c = *date;

		/* Stop at end of string or newline */
		if (!c || c == '\n')
			break;

		if (FUNC0(c))
			match = FUNC2(date, &tm, offset);
		else if (FUNC1(c))
			match = FUNC3(date, &tm, offset, &tm_gmt);
		else if ((c == '-' || c == '+') && FUNC1(date[1]))
			match = FUNC5(date, offset);

		if (!match) {
			/* BAD */
			match = 1;
		}

		date += match;
	}

	/* mktime uses local timezone */
	*timestamp = FUNC8(&tm);
	if (*offset == -1)
		*offset = (int)((time_t)*timestamp - FUNC7(&tm)) / 60;

	if (*timestamp == (git_time_t)-1)
		return -1;

	if (!tm_gmt)
		*timestamp -= *offset * 60;
	return 0; /* success */
}