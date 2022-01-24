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
typedef  int /*<<< orphan*/  time_t ;
struct tm {size_t tm_wday; size_t tm_mon; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; scalar_t__ tm_year; int /*<<< orphan*/  tm_mday; } ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (char*,size_t const,char*,char const*,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tm* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(char *date, const size_t datelen, const struct tm *tm)
{
	static const char *DAYS[] =
		{ "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
	static const char *MONTHS[] =
		{ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };

	time_t t = FUNC6(NULL);

#if defined(EVENT__HAVE__GMTIME64_S) || !defined(_WIN32)
	struct tm sys;
#endif

	/* If `tm` is null, set system's current time. */
	if (tm == NULL) {
#if !defined(_WIN32)
		FUNC5(&t, &sys);
		tm = &sys;
		/** detect _gmtime64()/_gmtime64_s() */
#elif defined(EVENT__HAVE__GMTIME64_S)
		errno_t err;
		err = _gmtime64_s(&sys, &t);
		if (err) {
			event_errx(1, "Invalid argument to _gmtime64_s");
		} else {
			tm = &sys;
		}
#elif defined(EVENT__HAVE__GMTIME64)
		tm = _gmtime64(&t);
#else
		tm = gmtime(&t);
#endif
	}

	return FUNC3(
		date, datelen, "%s, %02d %s %4d %02d:%02d:%02d GMT",
		DAYS[tm->tm_wday], tm->tm_mday, MONTHS[tm->tm_mon],
		1900 + tm->tm_year, tm->tm_hour, tm->tm_min, tm->tm_sec);
}