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
typedef  int /*<<< orphan*/  timestamp_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; } ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 char* FUNC0 (char const*,struct tm*,struct tm*,int*,int*) ; 
 char* FUNC1 (char const*,struct tm*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (struct tm*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct tm*,struct tm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static timestamp_t FUNC7(const char *date,
				   const struct timeval *tv,
				   int *error_ret)
{
	int number = 0;
	int touched = 0;
	struct tm tm, now;
	time_t time_sec;

	time_sec = tv->tv_sec;
	FUNC4(&time_sec, &tm);
	now = tm;

	tm.tm_year = -1;
	tm.tm_mon = -1;
	tm.tm_mday = -1;

	for (;;) {
		unsigned char c = *date;
		if (!c)
			break;
		date++;
		if (FUNC3(c)) {
			FUNC5(&tm, &number);
			date = FUNC1(date-1, &tm, &number, time_sec);
			touched = 1;
			continue;
		}
		if (FUNC2(c))
			date = FUNC0(date-1, &tm, &now, &number, &touched);
	}
	FUNC5(&tm, &number);
	if (!touched)
		*error_ret = 1;
	return (timestamp_t)FUNC6(&tm, &now, 0);
}